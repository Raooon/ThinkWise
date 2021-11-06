package co.yedam.thinkwise.command.member;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
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

public class FindPw implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 비밀번호찾기

		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		vo.setEmail(request.getParameter("email"));
		vo.setName(request.getParameter("name"));
		vo.setTel(request.getParameter("tel"));
		vo = memberDao.selectPassword(vo);

		System.out.println(request.getParameter("email"));
		if (vo != null) {
			String email = request.getParameter("email");

			Properties p = System.getProperties();
			p.put("mail.smtp.starttls.enable", "true"); // gmail은 true 고정
			p.put("mail.smtp.host", "smtp.naver.com"); // smtp 서버 주소
			p.put("mail.smtp.auth", "true"); // gmail은 true 고정
			p.put("mail.smtp.port", "465"); // 네이버 포트

			Authenticator auth = new MyAuthentication();
			// session 생성 및 MimeMessage생성
			Session session = Session.getDefaultInstance(p, auth);
			MimeMessage msg = new MimeMessage(session);

			try {
				// 편지보낸시간
				msg.setSentDate(new Date());
				InternetAddress from = new InternetAddress();

				// 발신자 아이디
				from = new InternetAddress("jm3733@naver.com");
				// 이메일 발신자
				msg.setFrom(from);

				// 이메일 수신자
				InternetAddress to = new InternetAddress(email);
				msg.setRecipient(Message.RecipientType.TO, to);

				// 이메일 제목
				msg.setSubject(request.getParameter("name") + "님께 안내드립니다.", "UTF-8");

				/*
				 * Random rnd = new Random(); int number = rnd.nextInt(999999);
				 */

				// 이메일 내용
				msg.setText("비밀번호 유효숫자를 안내드립니다.", "UTF-8");
				// 이메일 헤더
				msg.setHeader("content-Type", "text/html");

				// 메일보내기
				javax.mail.Transport.send(msg, msg.getAllRecipients());

			} catch (AddressException addr_e) {
				addr_e.printStackTrace();
			} catch (MessagingException msg_e) {
				msg_e.printStackTrace();
			} catch (Exception msg_e) {
				msg_e.printStackTrace();
			}
		}
		return null;

	}
}

class MyAuthentication extends Authenticator {

	PasswordAuthentication account;

	public MyAuthentication() {

		String id = "jm3733@naver.com"; // 네이버 이메일 아이디
		String pw = "asssh0616!"; // 네이버 비밀번호
		// ID와 비밀번호를 입력한다.
		account = new PasswordAuthentication(id, pw);
	}

	// 시스템에서 사용하는 인증정보
	public PasswordAuthentication getPasswordAuthentication() {
		return account;
	}
}

