package com.example.internetpro.dao;

import com.example.internetpro.domain.User;

public interface RegistDao {
    User findUserByidcard(String name);
    int insertNewUser(User user);
}
