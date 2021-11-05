package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberMyInfoVO;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class SelectMyInfo implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberService memberDao = new MemberServiceImpl();
		MemberMyInfoVO vo = new MemberMyInfoVO();
		vo.setEmail("luda@abc.com");
		request.setAttribute("member", memberDao.selectMyInfo(vo));
		
		return "member/selectMyInfo";
	}

}
