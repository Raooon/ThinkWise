package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberCheck implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 중복체크
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));

		vo = memberDao.selectMember(vo);
		
		String viewPage = null;
		if(vo == null) {
			viewPage = "사용가능한 이메일 입니다.";
			System.out.println("사용가능");
		} else {
			viewPage = "이미 사용중인 이메일 입니다.";
			System.out.println("사용불가");
		}
		
		return "ajax:"+viewPage;
	}

}
