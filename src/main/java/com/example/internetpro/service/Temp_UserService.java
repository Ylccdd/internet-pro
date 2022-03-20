package com.example.internetpro.service;

import com.example.internetpro.domain.Temporary;

import java.util.List;

/**
 * 添加临时用户充值记录
 */
public interface Temp_UserService {
    void addinfo(Temporary temp);

    /**
     * 查询所有临时用户充值信息
     * @return
     */
    public List<Temporary> findAll();
}
