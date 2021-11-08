package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class EmailPermisionForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 이메일 인증 폼으로 이동
		return "member/emailPermisionForm";
	}

}
