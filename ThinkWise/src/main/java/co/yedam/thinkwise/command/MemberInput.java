package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberInput implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		String viewPage = null;
		
		vo.setEmail(request.getParameter("email"));
		vo.setPassword(request.getParameter("password"));
		vo.setName(request.getParameter("name"));
		vo.setGender(request.getParameter("gender"));
		vo.setBirth(request.getParameter("birth").replaceAll("-", ""));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		vo.setDivision(request.getParameter("division"));
		vo.setParent(request.getParameter("parent"));
		
		int n = memberDao.insertMember(vo);
		if( n != 0) {
			request.setAttribute("message", "회원가입을 완료하였습니다.");
			viewPage = "member/login";
		} else {
			request.setAttribute("message", "회원가입을 실패하였습니다.");
			viewPage = "member/memberInput";
		}
		
		return viewPage;
}

}