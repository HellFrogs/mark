package com.dayrain.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dayrain.entity.User;
import com.dayrain.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginUrl")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserService userService = new UserService();
		User res = userService.loginCheck(username, password);
		request.getSession().setAttribute("loginUser", res);
		if(res != null) {
			//登录成功
			request.getSession().setAttribute("loginUser", res);
			request.getRequestDispatcher("/WEB-INF/pages/main.jsp").forward(request, response);
		}else {
			//登录失败
			request.setAttribute("msg", "登录失败，请检查用户名和密码是否正确！");
			request.getRequestDispatcher("/WEB-INF/pages/error.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
