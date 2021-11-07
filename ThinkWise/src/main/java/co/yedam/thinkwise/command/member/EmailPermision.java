package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;

public class EmailPermision implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 이메일 인증 확인
		
		HttpSession session = request.getSession();
		
		String emailP = request.getParameter("emailPermision");
		String rnd = (String) session.getAttribute("rnd");

		String text = null;
		
		if(emailP == rnd) {
			text = "인증되었습니다.";
			session.invalidate();
		} else {
			text = "인증이 실패하였습니다.";
		}
		
		return "ajax:" + text;
	}

}
