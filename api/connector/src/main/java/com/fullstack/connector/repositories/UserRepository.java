package com.fullstack.connector.repositories;

import com.fullstack.connector.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query(value = "SELECT * FROM user_list WHERE user_name = :uname",
            nativeQuery = true)
    User findUserByName(@Param("uname") String uname);

}
