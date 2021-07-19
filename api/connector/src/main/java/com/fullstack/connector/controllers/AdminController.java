package com.fullstack.connector.controllers;

import com.fullstack.connector.models.Admin;
import com.fullstack.connector.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.apache.commons.codec.binary.Base64;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.persistence.Convert;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/adloginv1")
public class AdminController {
    @Autowired
    AdminRepository adminRepository;

    // should not return list of passwords
    // return only true/false status is the password
    // is correctly identified from the input
    // all account creation for administrators is handled
    // database side
    @GetMapping
    public boolean login(@RequestParam String admin_name, @RequestParam String password_attempt) throws NoSuchAlgorithmException, InvalidKeySpecException {
        List<Admin> admlist = adminRepository.findAdminByName(admin_name);
        for(Admin adm : admlist) {

            // for testing purposes
            System.out.println("admin_name: " + admin_name);
            System.out.println("password_attempt: " + password_attempt);
            String calc_hash = hash(adm.getSalt(), password_attempt);
            String find_hash = adm.getHash();

            System.out.println("Hash in DB: " + find_hash + "\nHash Calculated: " + calc_hash);

            if(adm.getHash().equals(hash(adm.getSalt(), password_attempt)))
                return true;
        }
        return false;
    }

    // hashing function
    public String hash(String salt, String pass) throws NoSuchAlgorithmException, InvalidKeySpecException {
        byte[] bsalt = Base64.decodeBase64(salt);
        KeySpec spec = new PBEKeySpec(pass.toCharArray(), bsalt, 120000, 128);
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
        return Base64.encodeBase64String(factory.generateSecret(spec).getEncoded());
    }

    // for testing purposes only
    // TODO: remove function when done testing
    @PostMapping("/post_test")
    public Admin CreateHash(@RequestParam String name, @RequestParam String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        Admin newAdmin = new Admin();
        List<String> hashResult = hash(password);
        newAdmin.setAdmin_name(name);
        newAdmin.setSalt(hashResult.get(0));
        newAdmin.setHash(hashResult.get(1));

        return adminRepository.saveAndFlush(newAdmin);
    }

    // TODO: remove function when done testing
    public List<String> hash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        List<String> salt_hash_list = new ArrayList<String>();
        SecureRandom random = new SecureRandom();

        byte[] salt = new byte[8];
        random.nextBytes(salt);
        salt_hash_list.add(Base64.encodeBase64String(salt));

        KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, 120000, 128);
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
        salt_hash_list.add(Base64.encodeBase64String(factory.generateSecret(spec).getEncoded()));

        return salt_hash_list;
    }

    // TODO: remove function when done testing
    // get entire list of admins
    @GetMapping("/all")
    public List<Admin> list() {
        return adminRepository.findAll();
    }

}
