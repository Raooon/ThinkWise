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
		
		String perNb = request.getParameter("perNb");
		String rnd = (String) session.getAttribute("rnd");
		
		System.out.println(perNb);
		System.out.println(rnd);
		
		String viewPage = null;
		
		request.setAttribute("email", session.getAttribute("email"));
		
		if(perNb == rnd) {
			System.out.println("일치");
			viewPage = "member/memberInput";
			session.invalidate();
		} else {
			System.out.println("불일치");
			viewPage = "memberInputForm.do";
		}
		
		return viewPage;
	}

}
