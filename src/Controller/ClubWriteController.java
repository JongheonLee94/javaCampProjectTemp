package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlet.RequestMapping;

@RequestMapping("/clubwrite.do")
public class ClubWriteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		return "redirect:/club/clubBoard.jsp";
	}

}
