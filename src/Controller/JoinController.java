package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.MemberDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;
import vo.MemberVO;

@RequestMapping("/join.do")
public class JoinController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));
		vo.setPw(request.getParameter("pw"));
		vo.setPhone(request.getParameter("phone"));
		vo.setName(Util.h(request.getParameter("name")));
		vo.setGender(Util.parseInt(request.getParameter("gender")));
		String addr= request.getParameter("addr1")+" "+ request.getParameter("addr2");
		vo.setAddr(Util.h(request.getParameter("addr")));
		vo.setAge(Util.parseInt(request.getParameter("age")));
		MemberDAO dao = new MemberDAO_OracleImpl();
		dao.register(vo);
		return "redirect:/login/login.jsp";
	}


	
}
/*
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
*/