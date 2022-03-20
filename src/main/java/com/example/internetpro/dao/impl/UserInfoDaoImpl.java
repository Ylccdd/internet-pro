package com.example.internetpro.dao.impl;

import com.example.internetpro.dao.UserInfoDao;
import com.example.internetpro.domain.UserInfo;
import com.example.internetpro.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserInfoDaoImpl implements UserInfoDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<UserInfo> findAll() {
        //使用JDBC操作数据库

        String sql = "select *from use_info";
        List<UserInfo> userInfos = template.query(sql, new BeanPropertyRowMapper<UserInfo>(UserInfo.class));
        return userInfos;
    }

    @Override
    public int findTotalCount(Map<String, String[]> condition) {
        //1.定义模板初始化map
        String sql = "select count(*) from use_info where 1 = 1";
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


        return template.queryForObject(sb.toString(),Integer.class,params.toArray());
    }

    @Override
    public List<UserInfo> findinfoByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select *from use_info where 1 = 1";
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

        return template.query(sb.toString(),new BeanPropertyRowMapper<UserInfo>(UserInfo.class),params.toArray());
    }
}
