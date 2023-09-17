package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.userDao;
import model.userModel;

/**
 * Servlet implementation class userController
 */
@WebServlet("/userController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("register")) {
			userModel uModel = new userModel();
			uModel.setName(request.getParameter("name"));
			uModel.setEmail(request.getParameter("email"));
			uModel.setPasssword(request.getParameter("password"));
			uModel.setGender(request.getParameter("gender"));
			uModel.setContact(Long.parseLong(request.getParameter("contact")));
			uModel.setAddress(request.getParameter("address"));
			String hobby="";
			String join="";
			String hobbies[] = request.getParameterValues("chk");
			for(int i = 0;i<hobbies.length;i++) {
				hobby = hobby + hobbies[i];
				join = String.join(",", hobbies);
			}
			uModel.setHobby(join);
			userDao.insertUser(uModel);
			response.sendRedirect("loginuser.jsp");
		}else if(action.equalsIgnoreCase("login")) {
			userModel uModel = new userModel();
			uModel.setEmail(request.getParameter("email"));
			uModel.setPasssword(request.getParameter("password"));
			userModel userModel = userDao.loginUser(uModel);
			HttpSession session = request.getSession();
			session.setAttribute("data", userModel);
			request.getRequestDispatcher("homePage.jsp").forward(request, response);
		}else if(action.equalsIgnoreCase("update")) {
			userModel uModel = new userModel();
			uModel.setId(Integer.parseInt(request.getParameter("id")));
			uModel.setName(request.getParameter("name"));
			uModel.setEmail(request.getParameter("email"));
			uModel.setGender(request.getParameter("gender"));
			uModel.setContact(Long.parseLong(request.getParameter("contact")));
			uModel.setAddress(request.getParameter("address"));
			String hobby="";
			String join="";
			String hobbies[] = request.getParameterValues("chk");
			for(int i = 0;i<hobbies.length;i++) {
				hobby = hobby + hobbies[i];
				join = String.join(",", hobbies);
			}
			uModel.setHobby(join);
			userDao.updateById(uModel);
			request.getRequestDispatcher("homePage.jsp").forward(request, response);
			
		}
	}

}
