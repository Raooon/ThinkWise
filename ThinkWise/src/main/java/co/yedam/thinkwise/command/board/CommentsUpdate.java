package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class CommentsUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		CommentsVO commentsVO = new CommentsVO();
		CommentsService commentsDao = new CommentsServiceImpl();
		
		commentsVO.setCommentNo(Integer.parseInt(request.getParameter("commentNo")));
		commentsVO.setContents(request.getParameter("contents"));
		
		commentsDao.commentsUpdate(commentsVO);
		
		return "ajax:";
	}

}
