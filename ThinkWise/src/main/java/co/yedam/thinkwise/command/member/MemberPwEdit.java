package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberPwEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setPassword(request.getParameter("password"));
		vo.setId(Integer.parseInt(request.getParameter("id")));
		vo = memberDao.memberCurPwCheck(vo);
		
		String viewPage = null;
		if(vo != null) {
			vo.setPassword(request.getParameter("newPw"));
			int n = memberDao.updateMemberPw(vo);
			if(n != 0) {
				viewPage = "비밀번호가 변경되었습니다.";
				System.out.println(viewPage);
			} else {
				viewPage = "변경 오류";
				System.out.println(viewPage);
			}
		} else {
			viewPage = "현재비밀번호가 틀렸습니다.";
			System.out.println(viewPage);
		}
		return "ajax:" + viewPage;
	}

}
