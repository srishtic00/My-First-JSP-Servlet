package com.demo.login;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private LoginService userValidationService=new LoginService();
//	private TodoService todoService=new TodoService();
	
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
//		req.setAttribute("name", req.getParameter("name"));
//		req.setAttribute("password", req.getParameter("password"));
//GET method not secure therefore we prefer Post
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, res);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");

		boolean isValidUser = userValidationService.validateUser(name, password);

		if (isValidUser) {
//			request.setAttribute("name", name);
			//If we attach these variables with request They would not work because the page is redirected to another servlet 
//			request.setAttribute("todos", todoService.retrieveTodos());
//			request.getRequestDispatcher("/WEB-INF/views/Welcome.jsp").forward(request, response);
			request.getSession().setAttribute("name",name);
			response.sendRedirect("/todo.do");
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials!!");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
	}

}
