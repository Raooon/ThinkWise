package co.yedam.thinkwise.command.member;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.comm.Command;
import co.yedam.thinkwise.member.service.MemberService;
import co.yedam.thinkwise.member.service.MemberVO;
import co.yedam.thinkwise.member.serviceImpl.MemberServiceImpl;

public class MemberCheck implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 중복체크
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setEmail(request.getParameter("email"));

		vo = memberDao.selectMember(vo);


		String viewPage = null;
		if (vo == null) {
			viewPage = "이메일이 확인되었습니다.";
			System.out.println("사용가능");
			
		} else {
			viewPage = "이미 사용중인 이메일 입니다.";
			System.out.println("사용불가");
		}

		return "ajax:" + viewPage;
	}

}
