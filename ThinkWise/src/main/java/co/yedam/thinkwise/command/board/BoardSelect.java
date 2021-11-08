package co.yedam.thinkwise.command.board;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class BoardSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//파일경로 넣어주는 부분
		HttpSession session = request.getSession();
		ServletContext context = request.getSession().getServletContext();
		
		String saveFolder = context.getRealPath("upload");
		session.setAttribute("dir", saveFolder);
		System.out.println(saveFolder);
		
		BoardService boardDao = new BoardServiceImpl();
		BoardVO boardVO = new BoardVO();
		
		//게시글 부분
		int bn = Integer.parseInt(request.getParameter("nid"));
		System.out.println(bn);
		boardVO.setBoardNo(bn);
		boardDao.boardHitUpdate(boardVO);
		boardVO = boardDao.boardSelect(boardVO);
		request.setAttribute("board", boardVO);
		
		//댓글 부분
		CommentsService commentsDao = new CommentsServiceImpl();
		CommentsVO commentsVO = new CommentsVO();
		
		commentsVO.setBoardNo(bn);
		request.setAttribute("comments", commentsDao.commentsList(commentsVO));
		
		return "board/boardSelect";
		
	}

}
