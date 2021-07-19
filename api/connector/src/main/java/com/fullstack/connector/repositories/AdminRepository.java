package com.fullstack.connector.repositories;

import com.fullstack.connector.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AdminRepository extends JpaRepository<Admin, Long> {

    @Query(value = "SELECT * FROM admin_list WHERE admin_name = :aname",
           nativeQuery = true)
    List<Admin> findAdminByName(@Param("aname") String aname);
}
