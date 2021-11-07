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
import co.yedam.thinkwise.command.board.BoardDelete;
import co.yedam.thinkwise.command.board.BoardInsert;
import co.yedam.thinkwise.command.board.BoardInsertForm;
import co.yedam.thinkwise.command.board.BoardList;
import co.yedam.thinkwise.command.board.BoardSelect;
import co.yedam.thinkwise.command.board.CommentsInsert;
import co.yedam.thinkwise.command.board.NoticeDelete;
import co.yedam.thinkwise.command.board.NoticeInsert;
import co.yedam.thinkwise.command.board.NoticeInsertForm;
import co.yedam.thinkwise.command.board.NoticeList;
import co.yedam.thinkwise.command.board.NoticeSelect;
import co.yedam.thinkwise.command.board.NoticeUpdate;
import co.yedam.thinkwise.command.board.NoticeUpdateForm;
import co.yedam.thinkwise.command.classes.ClassDelete;
import co.yedam.thinkwise.command.classes.ClassEdit;
import co.yedam.thinkwise.command.classes.MemberClassList;
import co.yedam.thinkwise.command.info.Carlendar;
import co.yedam.thinkwise.command.info.HomeCommand;
import co.yedam.thinkwise.command.info.KakaoChat;
import co.yedam.thinkwise.command.info.KakaoLogin;
import co.yedam.thinkwise.command.info.Location;
import co.yedam.thinkwise.command.member.FindPw;
import co.yedam.thinkwise.command.member.FindPwForm;
import co.yedam.thinkwise.command.member.MemberCheck;

import co.yedam.thinkwise.command.member.MemberDelete;

import co.yedam.thinkwise.command.member.MemberCheck2;

import co.yedam.thinkwise.command.member.MemberInfoEdit;
import co.yedam.thinkwise.command.member.MemberInput;
import co.yedam.thinkwise.command.member.MemberInputForm;
import co.yedam.thinkwise.command.member.MemberLogin;
import co.yedam.thinkwise.command.member.MemberLoginForm;
import co.yedam.thinkwise.command.member.MemberPwEdit;
import co.yedam.thinkwise.command.member.SelectMemberList;
import co.yedam.thinkwise.command.member.SelectMyInfo;

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
		map.put("/memberLoginForm.do", new MemberLoginForm());	//로그인페이지
		map.put("/memberLogin.do", new MemberLogin());	//로그인
		map.put("/findPwForm.do", new FindPwForm());	//아이디찾기
		map.put("/memberCheck2.do", new MemberCheck2());	//이메일 유무확인
		map.put("/findPw.do", new FindPw());

		map.put("/noticeList.do", new NoticeList()); // 첫페이지 호출
		
		map.put("/selectMemberList.do", new SelectMemberList()); //멤버목록(어드민)
		map.put("/selectMyInfo.do", new SelectMyInfo()); // 내정보 수정
		map.put("/memberPwEdit.do", new MemberPwEdit()); // 패스워드변경
		map.put("/memberInfoEdit.do", new MemberInfoEdit()); // 이름, 전화번호, 주소 변경
		map.put("/memberDelete.do", new MemberDelete()); //회원 탈퇴
		
		map.put("/memberClassList.do", new MemberClassList()); // 수업 목록
		map.put("/classDelete.do", new ClassDelete()); // 수업 삭제
		map.put("/classEdit.do", new ClassEdit()); // 수업 정보수정


		map.put("/carlendar.do", new Carlendar()); //캘린더
		map.put("/location.do", new Location()); //찾아오는 길
		map.put("/kakaoLogin.do", new KakaoLogin()); //카카오로그인
		map.put("/kakaoChat.do", new KakaoChat()); //카카오톡 연동??

		//notice
		map.put("/noticeList.do", new NoticeList()); // 공지사항 조회
		
		map.put("/noticeInsertForm.do", new NoticeInsertForm()); // 공지사항 등록 폼
		map.put("/noticeInsert.do", new NoticeInsert()); // 공지사항 등록
		
		map.put("/noticeSelect.do", new NoticeSelect()); // 공지사항 1건 조회
		map.put("/noticeDelete.do", new NoticeDelete()); // 공지사항 삭제
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm()); // 공지사항 수정 폼
		map.put("/noticeUpdate.do", new NoticeUpdate()); // 공지사항 수정
		
		//board
		map.put("/boardList.do", new BoardList()); //보고서 조회 (리스트)
		map.put("/boardInsertForm.do", new BoardInsertForm()); //보고서 등록 폼
		map.put("/boardInsert.do", new BoardInsert()); //보고서 등록
		
		map.put("/boardSelect.do", new BoardSelect()); //보고서 1건 조회
		map.put("/boardDelete.do", new BoardDelete()); //보고서 1건 삭제
		//map.put("/boardUpdateForm.do", new BoardUpdateForm()); //보고서 수정 폼
		
		//comments
		map.put("/commentsInsert.do", new CommentsInsert()); //댓글 추가
		
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
