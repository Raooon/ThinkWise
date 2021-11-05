package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		BoardService noticeDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		vo.setBoardNo(Integer.parseInt(request.getParameter("nid")));
		
		int n = noticeDao.boardDelete(vo);
		
		if ( n != 1) {
			request.setAttribute("message", "삭제에 실패했습니다.");
		} else {
			request.setAttribute("message", n+"건 삭제에 성공했습니다.");
		}
		
		return "board/boardSuccess";
	}

}
