package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DAO.MemberDAO_OracleImpl;
import VO.MemberVO;

@SuppressWarnings("serial")
public class MemberController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));
		vo.setPw(request.getParameter("pw"));
		vo.setPhone(request.getParameter("phone"));
		vo.setName(request.getParameter("name"));
		vo.setGender(Integer.parseInt(request.getParameter("gender")));
		
		vo.setAddr(request.getParameter("addr"));
		vo.setAge(Integer.parseInt(request.getParameter("age")));
		MemberDAO dao = new MemberDAO_OracleImpl();
		dao.register(vo);
		response.sendRedirect("/JSP/register.jsp");
		
	}
	
}
