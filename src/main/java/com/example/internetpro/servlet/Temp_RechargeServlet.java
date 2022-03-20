package com.example.internetpro.servlet;

import com.example.internetpro.domain.Temporary;
import com.example.internetpro.service.impl.Temp_UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/Temp_RechargeServlet")
public class Temp_RechargeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        Map<String, String[]> map = request.getParameterMap();
        Temporary temp = new Temporary();

        try {
            BeanUtils.populate(temp, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        Temp_UserServiceImpl service = new Temp_UserServiceImpl();
        service.addinfo(temp);

        response.sendRedirect(request.getContextPath() + "/Temp_showServlet");
    }
}
