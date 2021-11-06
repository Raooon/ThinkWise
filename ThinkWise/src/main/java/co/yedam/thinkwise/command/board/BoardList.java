package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		//게시글 부분
		BoardService boardDao = new BoardServiceImpl();
		
		request.setAttribute("boards", boardDao.boardList());
		
		//댓글 부분
		
		
		
		return "board/boardList";
		
	}

}
