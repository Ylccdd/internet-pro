package com.example.internetpro.servlet;



import com.example.internetpro.domain.User;
import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/findUserServlet")
public class FindUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String id =request.getParameter("id");
       //调用service
        UserService service=new UserServiceImpl();
        User user = service.findUserById(id);
        //将user存入request
        request.setAttribute("user",user);
        //转发
        request.getRequestDispatcher("/addTime.jsp").forward(request,response);

    }
}
