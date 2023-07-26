package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet({ "/admin/ad-home", "/admin/ad-user", "/admin/ad-video", })
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		if(uri.contains("admin/ad-home")) {
			this.doHome(request, response);
		} else if(uri.contains("user")) {
			this.doUser(request, response);
		} else if(uri.contains("video")) {
			this.doVideo(request, response);
		}
		request.getRequestDispatcher("/views/admin/ad-layout.jsp").forward(request, response);
	}

	private void doVideo(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/admin/ad-video.jsp");
	}

	private void doUser(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/admin/ad-user.jsp");
	}

	private void doHome(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/admin/ad-index.jsp");
	}

}
