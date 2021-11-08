package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class BoardUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("nid", request.getParameter("nid"));
		request.setAttribute("contentsu", request.getParameter("contentsu"));
		request.setAttribute("titleu", request.getParameter("titleu"));
		
		return "board/boardUpdateForm";
	}

}
