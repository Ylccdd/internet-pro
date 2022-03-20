package com.example.internetpro.servlet;

import com.example.internetpro.domain.UserInfo;
import com.example.internetpro.service.UserInfoSevice;
import com.example.internetpro.service.impl.UserInfoSeviceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/UserInfoListServlet")
public class UserInfoListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.调用service完成查询
        UserInfoSevice infoSevice = new UserInfoSeviceImpl();
        List<UserInfo> infoList = infoSevice.findAll();
        //2.将list存入request域
        request.setAttribute("infoList",infoList);

        List<UserInfo> pb =  infoSevice.findAll();
        //3.将PageBean存入request
        request.setAttribute("pb",pb);;
        //3.转发到list.jsp
        request.getRequestDispatcher("/list.jsp").forward(request,response);

    }
}
