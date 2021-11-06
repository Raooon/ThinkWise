package co.yedam.thinkwise.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class FindPwForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 비밀번호 찾기 폼으로 이동
		return "member/findPwForm";
	}

}
