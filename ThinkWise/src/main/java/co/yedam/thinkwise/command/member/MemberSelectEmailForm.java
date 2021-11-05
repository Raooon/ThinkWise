package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class MemberSelectEmailForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 아이디찾기 폼으로 이동
		
		return "member/memberSelectEmail";
	}

}
