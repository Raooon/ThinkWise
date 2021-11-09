package co.yedam.thinkwise.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.notice.service.NoticeVO;

public class NoticeUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNo(Integer.parseInt(request.getParameter("nid")));
		vo.setTitle(request.getParameter("utitle"));
		vo.setContents(request.getParameter("ucontent"));
		
		session.setAttribute("notice", vo);
		
		return "notice/noticeUpdateForm";
	}

}
