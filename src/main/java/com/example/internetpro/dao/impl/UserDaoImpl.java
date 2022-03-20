package com.example.internetpro.dao.impl;

import com.example.internetpro.dao.UserDao;
import com.example.internetpro.domain.Charge;
import com.example.internetpro.domain.User;
import com.example.internetpro.util.JDBCUtils;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserDaoImpl implements UserDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public User findUserByUsernameAndPassword(String username, String password) {
        try {
            String sql = "select * from user where name = ? and password = ?";   //真实姓名登录
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, password);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int findTotalCount(Map<String, String[]> condition) {
        //1.定义模板初始化sql
        String sql = "select count(*) from user where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        //2.遍历map
        Set<String> keySet = condition.keySet();
        //定义参数集合
        List<Object> params = new ArrayList<Object>();
        for(String key : keySet)
        {   //排除分页条件参数
            if("currentPage".equals(key) || "rows".equals(key))
            {
                continue;
            }
            //获取value
            String value = condition.get(key)[0];
            //判断value是否有值
            if(value!=null && !"".equals(value))
            {
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%"); //?条件的值
            }
        }
        System.out.println(sb.toString());
        System.out.println(params);

        return template.queryForObject(sb.toString(),Integer.class,params.toArray());
    }

    @Override
    public List<User> findByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from user where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        //2.遍历map
        Set<String> keySet = condition.keySet();
        //定义参数集合
        List<Object> params = new ArrayList<Object>();
        for(String key : keySet)
        {   //排除分页条件参数
            if("currentPage".equals(key) || "rows".equals(key))
            {
                continue;
            }
            //获取value
            String value = condition.get(key)[0];
            //判断value是否有值
            if(value!=null && !"".equals(value))
            {
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%"); //?条件的值
            }
        }

        //添加分页查询
        sb.append(" limit ?,? ");
        //添加分页查询数值
        params.add(start);
        params.add(rows);

        return template.query(sb.toString(),new BeanPropertyRowMapper<User>(User.class),params.toArray());

    }

    @Override
    public User findByUsername(String username) {
        User user = null;
        try {
            String sql = "select *from vip_user where name=?";
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public void save(User user) {

    }

    @Override
    public void regist(User user) {
        //定义sql
        String sql = "insert into user values(null,?,?,?,?,?,null,null)";
        //执行sql
        template.update(sql,user.getUsername(),user.getPassword(),user.getName(),user.getIdcard(),user.getPhone());
    }


    @Override
    public List<User> findAll() {
        //使用JDBC操作数据库
        //定义sql
        String sql="select * from user ";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
    }

    /**
     * 根据用户身份证号判断用户是否存在
     * @param idcard
     * @return
     */
    @Override
    public User findByUseridcard(String idcard) {
        User user = null;
        try {
            String sql = "select * from user where idcard = ?";
            user = template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),idcard);
        } catch (Exception e) {

        }
        return user;
    }

    @Override
    public void ChangeAccount(String idcard) {
        String sql = "UPDATE internetcafe.user SET flag = 1 WHERE (idcard = ?);";
        template.update(sql,idcard);

    }

    //查询指定会员
    @Override
    public User findByInfo(User user) {
        String sql="select *from user where username = ? and idcard = ?";
        //处理queryForObject的异常,因为它不会返回null结果
        try {
            return  template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),user.getUsername(),user.getIdcard());
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    @Override
    public User findById(int id) {
        String sql="select *from user where id = ?";

        return  template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),id);
    }

    @Override
    public void delete(int id) {

        String sql="delete from user where id =?";
        template.update(sql, id);
    }

    @Override
    public void updateUser(User user) {
        String sql="update user set username=?,password=?,name=?,idcard=?,phone=? where id=?";
        template.update(sql,user.getUsername(),user.getPassword(),user.getName(),user.getIdcard(),user.getPhone(),user.getId());
    }

    @Override
    public void add(User user) {
        String  sql="insert into user values(null,?,?,?,?,?,?,null)";
        template.update(sql,user.getUsername(), user.getPassword(), user.getName(),user.getIdcard(),user.getPhone(), user.getAccount());
    }
    @Override
    public List<Charge> findAllCharge() {
        String sql="select * from charge ";
        List<Charge> charges = template.query(sql, new BeanPropertyRowMapper<Charge>(Charge.class));
        return charges;
    }

    @Override
    public List<Charge> findByDate(String date) {
        String sql="select *from charge where date = ?";
        return template.query(sql,new BeanPropertyRowMapper<Charge>(Charge.class),date);
    }

    @Override
    public List<Charge> findByMonth(String month) {
        String sql="select *from charge where MONTH(date) = ?";
        return template.query(sql,new BeanPropertyRowMapper<Charge>(Charge.class),month);
    }

    @Override
    public void addTime(User user) {
        String sql1="insert into charge(id,username,date,total,recharge) values(?,?,?,?,?)";
        String sql="update user set account=? where id=?";
        //template.update(sql,user.getName(),user.getAccount(),user.getUsername(),user.getPassword(),user.getId());
        template.update(sql,user.getAccount(),user.getId());
        template.update(sql1,user.getId(),user.getUsername(),"2022-3-08",user.getAccount(),user.getAccount());
    }


}
