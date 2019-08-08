package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.RequestMapping;

@RequestMapping("/logout.do")
public class LogoutController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		System.out.println("a");
		session.removeAttribute("member");
		System.out.println("a");
		
		return "/index.jsp";
	}
		
}
