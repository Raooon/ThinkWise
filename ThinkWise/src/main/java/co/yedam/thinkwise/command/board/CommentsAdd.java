package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class CommentsAdd implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		CommentsVO commentsVO = new CommentsVO();
		CommentsService commentsDao = new CommentsServiceImpl();
		
		int id = (int) session.getAttribute("id");
		
		commentsVO.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		commentsVO.setCommentNo2(request.getParameter("commentNo"));
		commentsVO.setContents(request.getParameter("contents"));
		commentsVO.setId(id);
		
		commentsDao.commentsAdd(commentsVO);
		int cn = commentsVO.getCommentNo();
		System.out.println(cn);
		commentsVO.setCommentNo(cn);
		commentsVO = commentsDao.commentsSelect(commentsVO);
		Gson gson = new Gson();
		
		return "ajax:"+gson.toJson(commentsVO);
	}

}
