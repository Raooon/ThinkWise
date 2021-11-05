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
		//vo.setTitle(request.getParameter("tu"));
		//vo.setContents(request.getParameter("cu"));
		
		//System.out.println(vo.getContents());
		//System.out.println(vo.getTitle());
		
		session.setAttribute("notice", vo);
		
		return "notice/noticeUpdateForm";
	}

}
