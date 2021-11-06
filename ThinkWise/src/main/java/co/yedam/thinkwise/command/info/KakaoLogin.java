package co.yedam.thinkwise.command.info;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class KakaoLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		return "home/kakaoLogin.jsp";
	}

}
