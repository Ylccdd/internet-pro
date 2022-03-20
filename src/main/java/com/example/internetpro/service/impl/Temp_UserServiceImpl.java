package com.example.internetpro.service.impl;

import com.example.internetpro.dao.Temp_UserDao;
import com.example.internetpro.dao.impl.Temp_UserDaoImpl;
import com.example.internetpro.domain.Temporary;
import com.example.internetpro.service.Temp_UserService;

import java.util.List;

public class Temp_UserServiceImpl implements Temp_UserService {
    private Temp_UserDao temp_dao = new Temp_UserDaoImpl();

    @Override
    public void addinfo(Temporary temp) {
        temp_dao.add(temp);

    }

    @Override
    public List<Temporary> findAll() {
        return temp_dao.findAll();
    }


}
