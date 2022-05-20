package com.cos.bootpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.bootpro.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
