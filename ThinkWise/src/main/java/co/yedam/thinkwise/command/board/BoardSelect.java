package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//게시글 부분
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		vo.setBoardNo(Integer.parseInt(request.getParameter("nid")));
		
		boardDao.boardHitUpdate(vo);
		
		vo = boardDao.boardSelect(vo);
		request.setAttribute("board", vo);
		
		//댓글 부분
		
		
		
		
		return "board/boardSelect";
	}

}
