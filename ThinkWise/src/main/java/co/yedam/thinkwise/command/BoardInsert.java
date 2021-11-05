package co.yedam.thinkwise.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		//HttpSession session = request.getSession();
		
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		//세션에서 아이디값 받아서 넣기
		//vo.setId((int) session.getAttribute("id"));
		
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		int n = boardDao.boardInsert(vo);
		
		if (n != 1) {
			request.setAttribute("message", "보고서 등록을 실패했습니다.");
		} else {
			request.setAttribute("message", "보고서 "+n+"건 등록 됐습니다.");
		}
		
		return "board/boardSuccess";
	}

}
