package com.example.internetpro.servlet;

import com.example.internetpro.domain.Temporary;
import com.example.internetpro.domain.UserInfo;
import com.example.internetpro.service.Temp_UserService;
import com.example.internetpro.service.UserInfoSevice;
import com.example.internetpro.service.impl.Temp_UserServiceImpl;
import com.example.internetpro.service.impl.UserInfoSeviceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Temp_showServlet")
public class Temp_showServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Temp_UserService service = new Temp_UserServiceImpl();
        List<Temporary> temp = service.findAll();
        request.setAttribute("temp",temp);
        request.getRequestDispatcher("/Temp_show.jsp").forward(request,response);

    }
}
