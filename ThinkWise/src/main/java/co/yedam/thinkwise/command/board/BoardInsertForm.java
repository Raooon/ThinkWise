package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;

public class BoardInsertForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		return "board/boardInsertForm";
	}

}
