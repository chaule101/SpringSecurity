package com.chaule.repository;

import org.springframework.data.repository.CrudRepository;

import com.chaule.entity.User;

public interface UserRepository extends CrudRepository<User, Integer> {

    User findByEmail(String email);

}