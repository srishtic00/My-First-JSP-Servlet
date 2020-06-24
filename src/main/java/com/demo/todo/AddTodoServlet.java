package com.demo.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private TodoService todoService = new TodoService();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String todo = request.getParameter("todo");
		if ("".equals(todo)) {
			request.setAttribute("errorMessage", "Enter a valid todo");
		} else {
			todoService.addTodo(todo);
		}
//		request.setAttribute("todos", todoService.retrieveTodos());
//		request.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(request, response);
		//On reloading the page all the content gets rerendered and the todo is again and again added to the list therefore we prefer to redirect to the servlet 
		response.sendRedirect("/todo.do");
	}
}