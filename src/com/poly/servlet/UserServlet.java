package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.dao.FavoriteDAO;
import com.poly.dao.UserDAO;
import com.poly.dao.VideoDAO;
import com.poly.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet({"/user/home","/user/favorite-video","/user/change-password","/user/forgot-password"
	,"/user/description-video","/user/edit-profile","/user/login","/user/register"})
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    UserDAO userDAO = new UserDAO();
    VideoDAO videoDAO = new VideoDAO();
    FavoriteDAO favoriteDAO = new FavoriteDAO();
	
    public static void main(String[] args) {
		UserDAO dao = new UserDAO();
		User use = dao.findById("lunt");
		System.out.println(use.getFullname());
	}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		if(uri.contains("user/home")) {
			this.doHome(request, response);
		} else if(uri.contains("login")) {
			this.doLogin(request, response);
		} else if(uri.contains("register")) {
			this.doRegister(request, response);
		} else if(uri.contains("change-password")) {
			this.doChangePassword(request, response);
		} else if(uri.contains("forgot-password")) {
			this.doForgotPassword(request, response);
		} else if(uri.contains("edit-profile")) {
			this.doEditProfile(request, response);
		} else if(uri.contains("description-video")) {
			this.doDescriptionVideo(request, response);
		} else if(uri.contains("favorite-video")) {
			this.doFavoriteVideo(request, response);
		} 
		
		request.getRequestDispatcher("/views/user/layout.jsp").forward(request, response);
	}
	

	private void doFavoriteVideo(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/favorite-video.jsp");
	}

	private void doDescriptionVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/description-video.jsp");
	}

	private void doEditProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/edit-profile.jsp");
	}

	private void doForgotPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/forgot-password.jsp");
	}

	private void doRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/register.jsp");
	}

	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getMethod();
		if(method.equalsIgnoreCase("GET")) {
			request.setAttribute("view", "/views/user/login.jsp");
		}
		if(method.equalsIgnoreCase("POST")) {
			String username = request.getParameter("UserId");
			String password = request.getParameter("Password");
			String remember = request.getParameter("Remember");
			
			
			try {
				User user = userDAO.findById(username);
				if(user == null) {
					request.setAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
					request.setAttribute("view", "/views/user/login.jsp");
				}
				else if(!user.getPassword().equals(password)) {
					request.setAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
					request.setAttribute("view", "/views/user/login.jsp");
				}
				else {
					request.setAttribute("view", "/views/user/index.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	private void doChangePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/change-password.jsp");
	}

	private void doHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/views/user/index.jsp");
		
	}

}
