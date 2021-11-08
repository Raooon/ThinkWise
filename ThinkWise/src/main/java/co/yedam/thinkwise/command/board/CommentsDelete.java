package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class CommentsDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		CommentsVO commentsVO = new CommentsVO();
		CommentsService commentsDao = new CommentsServiceImpl();
		
		commentsVO.setCommentNo(Integer.parseInt(request.getParameter("commentNo")));
		
		commentsDao.commentsDelete(commentsVO);
		
		return "ajax:";
	}

}
