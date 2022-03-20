package com.example.internetpro.dao;

import com.example.internetpro.domain.Charge;
import com.example.internetpro.domain.User;


import java.util.List;
import java.util.Map;
import java.util.UUID;

public interface UserDao {
    User findUserByUsernameAndPassword(String username, String password);

    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int start, int rows, Map<String, String[]> condition);

    /**
     * g根据用户名查用户信息
     * @param username
     * @return
     */
    public User findByUsername(String username);

    /**
     * 用户保存
     * @param user
     */
    public void save(User user);


    void regist(User user);

    public List<User> findAll();

    User findByUseridcard(String idcard);

    /**
     * 按id查找到会员，提交退费申请
     * @param idcard
     * @return
     */
    void ChangeAccount(String idcard);

    public User findByInfo(User user);//查询指定会员

    User findById(int id);

    void delete(int id);

    void updateUser(User user);

    void add(User user);

    public List<Charge> findAllCharge();

    public List<Charge> findByDate(String date);

    public List<Charge> findByMonth(String month);

    void addTime(User user);


}

