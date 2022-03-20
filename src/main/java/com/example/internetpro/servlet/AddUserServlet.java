package com.example.internetpro.servlet;

import com.example.internetpro.domain.User;
import com.example.internetpro.service.UserService;
import com.example.internetpro.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addUserServlet")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("utf-8");
            Map<String, String[]> map = request.getParameterMap();
            User user=new User();
            try {
                BeanUtils.populate(user,map);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            UserService service=new UserServiceImpl();
            service.addUser(user);
            //跳转回UserlistServlet
            response.sendRedirect(request.getContextPath()+"/userListServlet");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
