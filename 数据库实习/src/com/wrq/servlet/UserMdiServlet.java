package com.wrq.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wrq.model.User;
import com.wrq.service.UserService;

public class UserMdiServlet extends HttpServlet {
	UserService userService = new UserService();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		int user_id = Integer.parseInt(request.getParameter("user_id"));		
		user.setAccount(request.getParameter("account"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setCard(request.getParameter("card"));
		user.setPower(Integer.parseInt(request.getParameter("power")));
		user.setSex(Integer.parseInt(request.getParameter("sex")));
		user.setTel(request.getParameter("tel"));
		user.setUser_name(request.getParameter("user_name"));
		user.setUser_id(user_id);
		
		try {
			userService.mdi(user);
			
			request.setAttribute("message", "?????");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "??????");
		}
		request.setAttribute("url", "UserListServlet.do");
		request.getRequestDispatcher("message.jsp").forward(request, response);

}
}

