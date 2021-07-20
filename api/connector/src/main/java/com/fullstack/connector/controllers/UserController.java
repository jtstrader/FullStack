package com.fullstack.connector.controllers;

import com.fullstack.connector.models.User;
import com.fullstack.connector.repositories.UserRepository;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/login")
public class UserController {
    @Autowired
    UserRepository userRepository;

    // should not return list of passwords
    // return only true/false status is the password
    // is correctly identified from the input
    // all account creation for users is handled
    // database side for now

    // TODO: create post method to create new users with a Register menu

    @GetMapping
    public String login(@RequestParam String user_name, @RequestParam String password_attempt) throws NoSuchAlgorithmException, InvalidKeySpecException {
        User usr = userRepository.findUserByName(user_name);
        if(usr == null)
            return "FAIL: User not found";

        // for testing purposes
        System.out.println("user_name: " + user_name);
        System.out.println("password_attempt: " + password_attempt);
        String calc_hash = hash(usr.getSalt(), password_attempt);
        String find_hash = usr.getHash();

        System.out.println("Hash in DB: " + find_hash + "\nHash Calculated: " + calc_hash);

        if(usr.getHash().equals(hash(usr.getSalt(), password_attempt)))
            return "OK: Login success.";
        return "FAIL: Invalid password.";
    }

    // hashing function
    public String hash(String salt, String pass) throws NoSuchAlgorithmException, InvalidKeySpecException {
        byte[] bsalt = Base64.decodeBase64(salt);
        KeySpec spec = new PBEKeySpec(pass.toCharArray(), bsalt, 120000, 128);
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
        return Base64.encodeBase64String(factory.generateSecret(spec).getEncoded());
    }

    // create new user account, will default to no admin privileges
    @PostMapping("/register")
    public String CreateHash(@RequestParam String new_user_name, @RequestParam String new_user_password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        System.out.println("in register method!");
        // confirm that the requested username is not already in use
        if(userRepository.findUserByName(new_user_name) != null)
            return "FAIL: User already exists";
        
        User newUser = new User();
        List<String> hashResult = hash(new_user_password);
        newUser.setUser_name(new_user_name);
        newUser.setSalt(hashResult.get(0));
        newUser.setHash(hashResult.get(1));
        newUser.setAdmin(false);

        try {
            userRepository.saveAndFlush(newUser);
            return "OK: Account Created";
        }
        catch(Exception e) {
            System.err.println(e);
            return "FAIL: Failed to create account.";
        }
    }

    // create new hashed password for new user
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
    // get entire list of users
    @GetMapping("/all")
    public List<User> list() {
        return userRepository.findAll();
    }
}
