package com.example.internetpro.servlet;



import com.example.internetpro.domain.Charge;
import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/totalServlet")
public class TotalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService service=new UserServiceImpl();
        List<Charge> charges = service.findCharge();
        //将list存入request域
        request.setAttribute("charges",charges);
        //转发到Total.jsp
        request.getRequestDispatcher("/Total.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
