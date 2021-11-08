package co.yedam.thinkwise.command.board;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		//파일경로 넣어주는 부분
		HttpSession session = request.getSession();
		ServletContext context = request.getSession().getServletContext();
		
		String saveFolder = context.getRealPath("upload");
		session.setAttribute("dir", saveFolder);
		System.out.println(saveFolder);
		
		//게시글 부분
		BoardService boardDao = new BoardServiceImpl();
		
		request.setAttribute("boards", boardDao.boardList());
		
		return "board/boardList";
		
	}

}
