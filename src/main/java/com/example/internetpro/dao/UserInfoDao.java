package com.example.internetpro.dao;

import com.example.internetpro.domain.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserInfoDao {
    public List<UserInfo> findAll();

    /**
     * 查询总记录数
     * @return
     * @param condition
     */
    int findTotalCount(Map<String, String[]> condition);

    /**
     * 分页查询每页记录
     * @param start
     * @param rows
     * @param condition
     * @return
     */
    List<UserInfo> findinfoByPage(int start, int rows, Map<String, String[]> condition);
}
