package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		BoardService boardDao = new BoardServiceImpl();
		
		request.setAttribute("boards", boardDao.boardList());
		
		return "board/boardList";
		
	}

}
