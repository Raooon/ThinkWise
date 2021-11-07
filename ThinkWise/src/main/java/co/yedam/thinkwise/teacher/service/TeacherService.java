package co.yedam.thinkwise.teacher.service;

import java.util.List;

import co.yedam.thinkwise.subject.service.SubjectVO;

public interface TeacherService {
	List<TeacherVO> teacherList();
	
	TeacherVO teacherSelect(TeacherVO vo);
	
	int teacherInsert(TeacherVO vo);
	int teacherUpdate(TeacherVO vo);
	int teacherDelete(TeacherVO vo);
}
