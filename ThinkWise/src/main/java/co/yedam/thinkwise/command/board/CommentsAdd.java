package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.comments.service.CommentsService;
import co.yedam.thinkwise.comments.service.CommentsVO;
import co.yedam.thinkwise.comments.serviceImpl.CommentsServiceImpl;

public class CommentsAdd implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		//VALUES(comment_seq.nextval,#{boardNo},'2',#{commentNo},sysdate,null,#{contents},0,#{id})
		HttpSession session = request.getSession();
		CommentsVO commentsVO = new CommentsVO();
		CommentsService commentsDao = new CommentsServiceImpl();
		
		int id = (int) session.getAttribute("id");
		
		commentsVO.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		commentsVO.setCommentNo2(request.getParameter("commentNo"));
		commentsVO.setContents(request.getParameter("contents"));
		commentsVO.setId(id);
		
		commentsDao.commentsAdd(commentsVO);
		
		return "ajax:";
	}

}
