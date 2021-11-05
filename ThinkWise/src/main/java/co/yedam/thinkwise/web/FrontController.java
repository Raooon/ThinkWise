package co.yedam.thinkwise.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.command.BoardInsert;
import co.yedam.thinkwise.command.BoardInsertForm;
import co.yedam.thinkwise.command.BoardList;
import co.yedam.thinkwise.command.Carlendar;
import co.yedam.thinkwise.command.HomeCommand;
import co.yedam.thinkwise.command.Location;
import co.yedam.thinkwise.command.MemberCheck;
import co.yedam.thinkwise.command.MemberInput;
import co.yedam.thinkwise.command.MemberInputForm;
import co.yedam.thinkwise.command.NoticeDelete;
import co.yedam.thinkwise.command.NoticeInsert;
import co.yedam.thinkwise.command.NoticeInsertForm;
import co.yedam.thinkwise.command.NoticeList;
import co.yedam.thinkwise.command.NoticeSelect;
import co.yedam.thinkwise.command.NoticeUpdate;
import co.yedam.thinkwise.command.NoticeUpdateForm;
import co.yedam.thinkwise.command.SelectMemberList;
import co.yedam.thinkwise.command.SelectMyInfo;
import co.yedam.thinkwise.command.SelectParent;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/home.do", new HomeCommand()); // 첫페이지 호출
		map.put("/memberInputForm.do", new MemberInputForm());	//회원가입 폼으로 이동
		map.put("/memberCheck.do", new MemberCheck());	//중복체크
		map.put("/memberInput.do", new MemberInput());	//회원가입
		map.put("/selectParent.do", new SelectParent());	// 부모 아이디 확인

		map.put("/noticeList.do", new NoticeList()); // 첫페이지 호출
		
		map.put("/selectMemberList.do", new SelectMemberList()); //멤버목록(어드민)
		map.put("/selectMyInfo.do", new SelectMyInfo()); //내정보


		map.put("/carlendar.do", new Carlendar()); //캘린더
		map.put("/location.do", new Location()); //찾아오는 길

		//notice
		map.put("/noticeList.do", new NoticeList()); // 공지사항 조회
		
		map.put("/noticeInsertForm.do", new NoticeInsertForm()); // 공지사항 등록 폼
		map.put("/noticeInsert.do", new NoticeInsert()); // 공지사항 등록
		
		map.put("/noticeSelect.do", new NoticeSelect()); // 공지사항 한 글 보기
		map.put("/noticeDelete.do", new NoticeDelete()); // 공지사항 삭제
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm()); // 공지사항 수정 폼
		map.put("/noticeUpdate.do", new NoticeUpdate()); // 공지사항 수정
		
		//board
		map.put("/boardList.do", new BoardList()); //보고서 조회 (리스트)
		map.put("/boardInsertForm.do", new BoardInsertForm()); //보고서 등록 폼
		map.put("/boardInsert.do", new BoardInsert()); //보고서 등록 폼
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
	      String uri = request.getRequestURI();
	      String contextPath = request.getContextPath();
	      String page = uri.substring(contextPath.length());
	      
	      Command command = map.get(page);
	      String viewPage = command.run(request, response);
	      
	      if(viewPage != null && !viewPage.endsWith(".do")) {
	         if(viewPage.startsWith("ajax:")) { //ajax리턴
	            response.setContentType("text/plain; charset=UTF-8");
	            response.getWriter().append(viewPage.substring(5));
	            return;
	         }
	         
	         if(viewPage.endsWith(".jsp")) { //tiles 적용 안 할 때
	            viewPage = "WEB-INF/views/" + viewPage;
	         }else { //tiles 적용
	            viewPage = viewPage + ".tiles";
	         }
	      }
	      
	      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	      dispatcher.forward(request, response);
	}

}
