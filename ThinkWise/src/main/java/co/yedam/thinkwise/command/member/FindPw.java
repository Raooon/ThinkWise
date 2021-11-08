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

		// 난수 8자리 생성
		String rnd = "";
		 for (int i = 0; i < 8; i++)
		    {
		        int category = ((int) (Math.random() * 100) % 3);
		        // 랜덤 숫자
		        if (category == 0)
		        {
		            int num = (int) (Math.random() * 10);
		            rnd = rnd.concat(String.valueOf(num));
		        } // 랜덤 소문자
		        else if (category == 1)
		        {
		            int startnum = 97;
		            int num = ((int) (Math.random() * 100) % 26);
		            char character = (char)(startnum + num);
		            rnd = rnd.concat(String.valueOf(character));
		        } // 랜덤 대문자
		        else
		        {
		            int startnum = 65;
		            int num = ((int) (Math.random() * 100) % 26);
		            char character = (char)(startnum + num);
		            rnd = rnd.concat(String.valueOf(character));
		        }
		    }
		
		MemberVO vo1 = new MemberVO();
		
		vo1.setEmail(request.getParameter("email"));
		vo1.setPassword(rnd);
		
		memberDao.updateMemberPwFind(vo1);
		
		String viewPage = null;
		
		if (vo != null) {
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			Properties p = new Properties(); // 정보담을 객체

			p.put("mail.smtp.host", "smtp.naver.com"); // smtp 서버 주소

			p.put("mail.smtp.port", "465"); // 네이버 포트
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.auth", "true"); // gmail은 true 고정
			p.put("mail.smtp.debug", "true");
			p.put("mail.smtp.socketFactory.port", "465");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");

			try {
				Authenticator auth = new MyAuthentication();
				// session 생성 및 MimeMessage생성
				Session session = Session.getInstance(p, auth);
				session.setDebug(true);

				// 메일의 내용을 담을 객체
				MimeMessage msg = new MimeMessage(session);

				// 편지보낸시간
				msg.setSentDate(new Date());

				// 발신자 아이디
				InternetAddress from = new InternetAddress();
				from = new InternetAddress("jm3733@naver.com");

				// 이메일 발신자
				msg.setFrom(from);

				// 이메일 수신자
				InternetAddress to = new InternetAddress(email);
				msg.addRecipient(Message.RecipientType.TO, to);

				// 이메일 제목
				msg.setSubject(name + "님께 안내드립니다.", "UTF-8");

				// 이메일 내용
				msg.setText("변경된 비밀번호를 안내드립니다." + System.lineSeparator()
						+ "비밀번호는 " + rnd + " 입니다.", 
						"UTF-8");
				System.out.println(rnd);
				
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
			
			request.setAttribute("message", "메일이 발송되었습니다. 로그인 후 비밀번호를 변경해주세요");
			viewPage = "member/memberLogin";
			
		} else {
			request.setAttribute("message", "회원정보를 확인할 수 없습니다.");
			viewPage = "home/home";
		}
		return viewPage;
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
