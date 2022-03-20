package com.example.internetpro.dao.impl;

import com.example.internetpro.dao.Temp_UserDao;
import com.example.internetpro.domain.Temporary;
import com.example.internetpro.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class Temp_UserDaoImpl implements Temp_UserDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public void add(Temporary temp) {
        String sql = "insert into temp values(null,?,?,?,?)";
        template.update(sql,temp.getRecharge_money(),temp.getRecharge_date(),temp.getRecharge_phone(),temp.getRecharge_type());
    }

    @Override
    public List<Temporary> findAll() {
        String sql = "select * from temp";
        List<Temporary> temp = template.query(sql, new BeanPropertyRowMapper<Temporary>(Temporary.class));
        return temp;
    }
}
