package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class KakaoChat implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		return "home/kakaoChat.jsp";
	}

}
