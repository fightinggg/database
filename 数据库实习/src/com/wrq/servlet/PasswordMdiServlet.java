package com.wrq.servlet;


import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wrq.utils.JdbcUtils;

public class PasswordMdiServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "passwordMdi.jsp";
        HttpSession session = request.getSession();
        Map<String, Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        if (!userMap.get("PASSWORD").equals(password)) {
            request.setAttribute("message", "原密码错误");
        } else {
            url = "passwordSuccess.jsp";
            JdbcUtils jd = new JdbcUtils();
            String sql = "update \"user\" set password=? where user_id=?";
            jd.update(sql, new Object[]{password1, userMap.get("USER_ID")});
        }
        request.getRequestDispatcher(url).forward(request, response);

    }
}

