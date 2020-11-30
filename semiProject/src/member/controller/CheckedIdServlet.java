package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.UserService;
import member.model.vo.User;

/**
 * Servlet implementation class CheckedIdServlet
 */
@WebServlet(name = "CheckedId", urlPatterns = { "/checkedId" })
public class CheckedIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckedIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		User user = new UserService().selectOneUser(userId);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/user/checkid.jsp");
		if(user==null) {
			request.setAttribute("result", true);
		}else {
			request.setAttribute("result", false);
		}
		request.setAttribute("checkId", userId);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
