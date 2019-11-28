package com.wrq.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wrq.model.User;
import com.wrq.service.UserService;

public class UserAddServlet extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user = new User();
        user.setAccount(request.getParameter("account"));
        user.setAge(Integer.parseInt(request.getParameter("age")));
        user.setCard(request.getParameter("card"));
        user.setPassword("123456");
        user.setPower(Integer.parseInt(request.getParameter("power")));
        user.setSex(Integer.parseInt(request.getParameter("sex")));
        user.setStatus(1);
        user.setTel(request.getParameter("tel"));
        user.setUser_name(request.getParameter("user_name"));

        try {
            userService.add(user);
            request.setAttribute("message", "添加成功");
        } catch (Exception e) {
            // TODO: handle exception
            request.setAttribute("message", e.getMessage());
        }
        request.setAttribute("url", "UserListServlet.do");
        request.getRequestDispatcher("message.jsp").forward(request, response);
    }

}
