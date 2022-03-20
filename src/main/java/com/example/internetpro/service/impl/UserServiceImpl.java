package com.example.internetpro.service.impl;

import com.example.internetpro.dao.UserDao;
import com.example.internetpro.dao.impl.UserDaoImpl;
import com.example.internetpro.domain.Charge;
import com.example.internetpro.domain.User;
import com.example.internetpro.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();

    @Override
    public User login(User user)
    {
        return dao.findUserByUsernameAndPassword(user.getName(),user.getPassword());
    }

    @Override
    public boolean regist(User user) {
        //根据用户idcard判断用户是否存在
        User u = dao.findByUseridcard(user.getIdcard());
        if(u!=null){
            return false;
        }
        dao.regist(user);
        return true;
    }

    /**
     * 查看所有会员
     * @return
     */
    @Override
    public List<User> findAll() {
        //调用Dao完成查询

        return dao.findAll();
    }

    @Override
    public boolean findUserByIdcard(String idcard) {
        dao.ChangeAccount(idcard);
        return true;
    }
    @Override
    public User findUserByInfo(User user) { return dao.findByInfo(user); }

    @Override
    public User findUserById(String id) {
        return dao.findById(Integer.parseInt(id));
    }
    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.updateUser(user);
    }

    @Override
    public void addUser(User user) {
        dao.add(user);
    }

    @Override
    public List<Charge> findCharge() {
        return dao.findAllCharge();
    }

    @Override
    public List<Charge> findByDate(String date) {
        return dao.findByDate(date);
    }

    @Override
    public List<Charge> findByMonth(String month) {
        return dao.findByMonth(month);
    }

    @Override
    public void addTime(User user) {
        dao.addTime(user);
    }


}
