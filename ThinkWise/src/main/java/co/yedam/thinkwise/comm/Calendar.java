package co.yedam.thinkwise.comm;


import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Calendar implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("text/html; charset=UTF-8");
			
			String command = request.getParameter("command");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}
