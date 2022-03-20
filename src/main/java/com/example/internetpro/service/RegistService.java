package com.example.internetpro.service;

import com.example.internetpro.domain.User;

public interface RegistService {
    //检查姓名是否已经存在
    boolean checkRegistidcard(String idcard);
    //注册是否成功
    boolean registUser(User user);
}
