package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class MemberLoginForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 폼으로 이동
		return "member/memberLogin";
	}

}
