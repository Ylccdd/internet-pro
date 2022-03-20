package com.example.internetpro.servlet;

import com.example.internetpro.domain.PageBean;
import com.example.internetpro.domain.UserInfo;
import com.example.internetpro.service.UserInfoSevice;
import com.example.internetpro.service.impl.UserInfoSeviceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet("/FindUserInfoByPageServlet")
public class FindUserInfoByPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //1.获取参数
        String currentPage = request.getParameter("currentPage");  //当前页码
        String rows = request.getParameter("rows");  //每页显示条数

        if(currentPage == null || "".equals(currentPage))
        {
            currentPage = "1";
        }
        if(rows==null ||"".equals(rows))
        {
            rows = "5";
        }

        //获取条件查询参数
        Map<String, String[]> condition = request.getParameterMap();   //查询条件

        //2.调用service查询
        UserInfoSevice infoSevice = new UserInfoSeviceImpl();
        PageBean<UserInfo> pb =  infoSevice.findUserInfoByPage(currentPage,rows,condition);
        //3.将PageBean存入request
        request.setAttribute("pb",pb);
        request.setAttribute("condition",condition);//将查询条件存入request
        //4.转发
        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }
}
