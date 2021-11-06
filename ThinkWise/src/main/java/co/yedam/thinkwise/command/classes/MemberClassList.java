package co.yedam.thinkwise.command.classes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.thinkwise.classes.service.MemberClassService;
import co.yedam.thinkwise.classes.serviceImpl.MemberClassServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class MemberClassList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberClassService classDao = new MemberClassServiceImpl();
		request.setAttribute("memberClasses", classDao.selectClassList());
		
		return "classes/memberClass";
	}

}
