package com.example.internetpro.servlet;

import com.example.internetpro.domain.User;
import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/FindUserMoneyServlet")
public class FindUserMoneyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取id
        String idcard = request.getParameter("idcard");
        //调用service查询
        UserService service = new UserServiceImpl();
        boolean flag = service.findUserByIdcard(idcard);
        //将user存入request
        request.setAttribute("flag",flag);
        //转发到update.jsp
        request.getRequestDispatcher("/success.jsp").forward(request,response);
    }
}
