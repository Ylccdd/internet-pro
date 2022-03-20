package com.example.internetpro.service.impl;

import com.example.internetpro.dao.UserInfoDao;
import com.example.internetpro.dao.impl.UserInfoDaoImpl;
import com.example.internetpro.domain.PageBean;
import com.example.internetpro.domain.UserInfo;
import com.example.internetpro.service.UserInfoSevice;

import java.util.List;
import java.util.Map;

public class UserInfoSeviceImpl implements UserInfoSevice {

    private UserInfoDao infoDao = new UserInfoDaoImpl();

    @Override
    public List<UserInfo> findAll() {
        return infoDao.findAll();
    }

    /*
    @Override
    public PageBean<UserInfo> findUserInfoByPage(String _currentPage, String _rows) {

        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        //1.创建空的PageBean对象
        PageBean<UserInfo> pb = new PageBean<UserInfo>();
        //2.设置参数
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);

        //3.调用dao查询总记录数
        int totalCount = infoDao.findTotalCount();
        pb.setTotalCount(totalCount);
        //4.调用dao查询List集合
        //计算开始的记录索引
        int start = (currentPage-1) * rows;
        List<UserInfo> list =  infoDao.findinfoByPage(start,rows);
        pb.setList(list);

        //5.计算总页码
        int totalPage = (totalCount % rows)  == 0 ? totalCount/rows : (totalCount/rows) + 1;
        pb.setTotalPage(totalPage);

        System.out.println(pb);
        return pb;
    }
    */
    @Override
    public PageBean<UserInfo> findUserInfoByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        if(currentPage <= 0)
        {
            currentPage = 1;
        }


        //1.创建空的PageBean对象
        PageBean<UserInfo> pb = new PageBean<UserInfo>();
        //2.设置参数
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);
        //3.调用dao查询总记录数
        int totalCount = infoDao.findTotalCount(condition);
        pb.setTotalCount(totalCount);
        //4.调用dao查询List集合
        //计算开始的记录索引
        int start = (currentPage-1)*rows;
        List<UserInfo> list = infoDao.findinfoByPage(start,rows,condition);
        pb.setList(list);
        //5.计算总页码
        int totalPage = (totalCount % rows) == 0 ? totalCount/rows : (totalCount/rows)+1;
        pb.setTotalPage(totalPage);

        if(currentPage >= totalPage)
        {
            currentPage = totalPage;
        }

        return pb;
    }
}
