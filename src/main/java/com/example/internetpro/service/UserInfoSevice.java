package com.example.internetpro.service;

import com.example.internetpro.domain.PageBean;
import com.example.internetpro.domain.UserInfo;

import java.util.List;
import java.util.Map;

/**
 * 用户使用信息的业务接口
 */
public interface UserInfoSevice {
    /**
     * 查询用户使用信息
     */
    public List<UserInfo> findAll();

    /**
     * 分页条件查询
     * @param currentPage
     * @param rows
     * @param condition
     * @return
     */
    PageBean<UserInfo> findUserInfoByPage(String currentPage, String rows, Map<String, String[]> condition);
}
