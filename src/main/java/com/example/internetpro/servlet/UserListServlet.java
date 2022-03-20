package com.example.internetpro.servlet;

import com.example.internetpro.domain.User;
import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/userListServlet")
public class UserListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用UserService完成查询
        UserService service=new UserServiceImpl();
        List<User> users = service.findAll();
        //将list存入request域
        request.setAttribute("users",users);
        //转发到list.jsp
        request.getRequestDispatcher("/Userlist.jsp").forward(request,response);
    }
}
