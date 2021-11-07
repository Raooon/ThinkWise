package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class CommentsInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		CommentsVO commentsVO = new CommentsVO();
		CommentsService commentsDao = new CommentsServiceImpl();
		
		int bn = Integer.parseInt(request.getParameter("boardNo"));
		String con = request.getParameter("contents");
		int id = (int)session.getAttribute("id");
				
		//등록
		commentsVO.setBoardNo(bn);
		commentsVO.setContents(con);
		commentsVO.setId(id);
		
		commentsDao.commentsInsert(commentsVO);
		int cn = commentsVO.getCommentNo();
		System.out.println(cn);
		//조회
		commentsVO.setCommentNo(cn);
		commentsVO = commentsDao.commentsSelect(commentsVO);
		Gson gson = new Gson();
		
		System.out.println(gson.toJson(commentsVO));
		return "ajax:"+gson.toJson(commentsVO);
	}

}
