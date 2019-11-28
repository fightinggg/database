package com.wrq.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wrq.utils.JdbcUtils;

public class VipAddServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String vip_id=request.getParameter("vip_id");
        String vip_name = request.getParameter("vip_name");
        String vip_tel = request.getParameter("vip_tel");
        String vip_address = request.getParameter("vip_address");
        String vip_sex = request.getParameter("vip_sex");
        String vip_card = request.getParameter("vip_card");
        String vip_grade = request.getParameter("vip_grade");
        System.out.println(vip_name+vip_tel+vip_address+vip_sex+vip_card+vip_grade);
        String sql = "insert into vip (VIP_ID,VIP_NAME,VIP_TEL,VIP_ADDRESS,VIP_SEX,VIP_CARD,VIP_GRADE) values (?,?,?,?,?,?,?)";
        JdbcUtils jd = new JdbcUtils();
        int result = jd.update(sql, new Object[]{vip_id,vip_name, vip_tel, vip_address, vip_sex, vip_card, vip_grade});
        if (result > 0) {
            request.setAttribute("message", "添加成功");
        } else {
            request.setAttribute("message", "添加失败");
        }
        request.setAttribute("url", "VipListServlet.do");
        request.getRequestDispatcher("message.jsp").forward(request, response);
    }
}
