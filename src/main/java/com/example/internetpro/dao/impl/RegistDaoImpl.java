package com.example.internetpro.dao.impl;

import com.example.internetpro.dao.RegistDao;
import com.example.internetpro.domain.User;
import com.example.internetpro.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.ResultSet;

public class RegistDaoImpl implements RegistDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    /**
     * 身份证号唯一，按身份证号判断用户是否存在
     * @param idcard
     * @return
     */
    @Override
    public User findUserByidcard(String idcard) {
        String sql = "select * from user where idcard = ?";
        User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), idcard);

        return user;
    }

    @Override
    public int insertNewUser(User user) {
        return 0;
    }
}
