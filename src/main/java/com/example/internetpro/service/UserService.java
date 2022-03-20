package com.example.internetpro.service;

import com.example.internetpro.domain.Charge;
import com.example.internetpro.domain.User;

import java.util.List;

public interface UserService {
    /**
     * 登录方法
     * @param user
     * @return
     */
    User login(User user);

    boolean regist(User user);

    /**
     * 查看所有会员
     * @return
     */
    public List<User> findAll();

    /**
     * 按身份证查找到会员，提交退费申请
     * @param idcard
     * @return
     */
    boolean findUserByIdcard(String idcard);

    /**
     * 查询指定会员
     * @param user
     */
    public User findUserByInfo(User user);
    /**
     * 根据id查询
     * @param id
     * @return
     */
    User findUserById(String id);
    /**
     * 根据id删除
     */
    void deleteUser(String id);

    /**
     * 修改信息
     * @param user
     */
    void updateUser(User user);

    /**
     * 添加User
     */
    void addUser(User user);

    /**
     * 查询消费清单
     * @return
     */
    public List<Charge> findCharge();

    public List<Charge> findByDate(String date);

    public List<Charge> findByMonth(String month);

    /**
     * 会员续费
     */

    void addTime(User user);



    // PageBean<User> findUserByPage(String currentPage, String rows, Map<String, String[]> condition);
}
