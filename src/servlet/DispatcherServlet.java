package servlet;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;

public class DispatcherServlet extends HttpServlet {
	Map<String, Controller> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException { // config가 web.xml 설정 가지고 있다.
		map = new Hashtable<String, Controller>();
		String[] controllers = config.getInitParameter("controllers").split(",");

		for (String controller : controllers) {
			try {
				Class<?> cls = Class.forName(controller.trim());
				RequestMapping an = cls.getAnnotation(RequestMapping.class);
				Controller value = (Controller) cls.newInstance();
				System.out.println(value);
				String key = an.value();
				System.out.println(key);
				map.put(key, value);
				System.out.println(map.toString());
				
			} catch (Exception e) {

			}
		}
		System.out.println(map.toString());
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ctxPath = request.getContextPath();
		String uri = request.getRequestURI();
		uri = uri.substring(ctxPath.length());
		System.out.println(uri);
		System.out.println(map.get(uri));
		Controller controller = map.get(uri);
		System.out.println("컨트롤러"+controller);
		if (controller == null) {
			System.out.println("해당요청을 처리할 수 없습니다.");
		}

		try {
			String path = controller.handleRequest(request, response);
			if (path == null) {
			} else if (path.startsWith("redirect:")) {
				response.sendRedirect(ctxPath + path.substring(9));
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
		} catch (Exception e) {
			HttpSession session = request.getSession();
			session.setAttribute("err", e);
			response.sendRedirect(ctxPath +"/err.jsp");
			
		}
	}

}
