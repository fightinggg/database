package com.wrq.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wrq.model.User;
import com.wrq.service.UserService;

public class UserDelServlet extends HttpServlet {
	UserService userService = new UserService();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		user.setUser_id(user_id);
		try {
			userService.del(user);
			request.setAttribute("message", "删除成功");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", e.getMessage());
		}
		request.getRequestDispatcher("message.jsp").forward(request, response);

}
}

