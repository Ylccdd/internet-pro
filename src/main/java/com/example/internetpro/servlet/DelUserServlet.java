package com.example.internetpro.servlet;

import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delUserServlet")
public class DelUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取id
        String id = request.getParameter("id");
        //调用service方法删除
        UserService service=new UserServiceImpl();
        service.deleteUser(id);
        //跳转到UserListServlet
        response.sendRedirect(request.getContextPath()+"/userListServlet");
    }
}
