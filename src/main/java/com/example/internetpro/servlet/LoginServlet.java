package com.example.internetpro.servlet;

import com.example.internetpro.domain.User;
import com.example.internetpro.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //2.获取数据
        //2.1获取用户填写的验证码
        String verifycode = request.getParameter("verifycode");
        //3***校验验证码
        HttpSession session = request.getSession();
        String checkcode_server = (String)session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER");

        if (!checkcode_server.equalsIgnoreCase(verifycode))
        {   //验证码不正确，提示信息，跳转回登陆页面
            request.setAttribute("login_msg","验证码错误！");
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
            return;
        }

        Map<String, String[]> map = request.getParameterMap();
        //4.封装User对象
        User user = new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        //5.调用service查询
        UserServiceImpl service = new UserServiceImpl();
        User loginUser = service.login(user);
        //6.判断是否登录成功
        if(loginUser != null)
        {
            session.setAttribute("user",loginUser);
            response.sendRedirect(request.getContextPath()+"/VIP.html");
        }
        else
        {
            request.setAttribute("login_msg","用户名或密码错误！");
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
        }
    }
    }

