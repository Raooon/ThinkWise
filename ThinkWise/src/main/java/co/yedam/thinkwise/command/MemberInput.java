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
		System.out.println(request.getParameter("email"));
		
		vo.setPassword(request.getParameter("password"));
		System.out.println(request.getParameter("email"));
		
		vo.setName(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		
		vo.setGender(request.getParameter("gender"));
		System.out.println(request.getParameter("email"));
		
		vo.setBirth(request.getParameter("birth").replaceAll("-", ""));
		System.out.println(request.getParameter("birth").replaceAll("-", ""));
		
		vo.setTel(request.getParameter("tel"));
		System.out.println(request.getParameter("email"));
		
		vo.setAddress(request.getParameter("address"));
		System.out.println(request.getParameter("email"));
		
		vo.setDivision(request.getParameter("division"));
		System.out.println(request.getParameter("email"));
		
		vo.setParent(request.getParameter("parent"));
		System.out.println(request.getParameter("email"));
		
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