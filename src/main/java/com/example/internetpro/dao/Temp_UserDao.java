package com.example.internetpro.dao;

import com.example.internetpro.domain.Temporary;

import java.util.List;

/**
 * 在临时用户充值表中插入数据
 */
public interface Temp_UserDao {
    void add(Temporary temp);


    /**
     * 展示所有临时充值信息
     * @return
     */
    public List<Temporary> findAll();
}
