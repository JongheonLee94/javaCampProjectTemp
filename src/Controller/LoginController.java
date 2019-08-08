package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.MemberDAO_OracleImpl;
import servlet.RequestMapping;
import vo.MemberVO;

@RequestMapping("/login.do")
public class LoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));
		vo.setPw( request.getParameter("pw"));
		
		MemberDAO dao = new MemberDAO_OracleImpl();
		vo= dao.login(vo);
		if(vo!=null){
			HttpSession session = request.getSession();
			session.setAttribute("member", vo);
			System.out.println(vo.getEmail()+"로그인되었습니다.");
			return  "redirect:/index.jsp";

			
		}else {
			return  "redirect:/login/login.jsp";
		}
		
	}

}
