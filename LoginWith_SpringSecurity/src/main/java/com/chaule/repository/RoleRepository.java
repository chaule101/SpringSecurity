package com.chaule.repository;

import org.springframework.data.repository.CrudRepository;

import com.chaule.entity.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {

    Role findByName(String name);

}