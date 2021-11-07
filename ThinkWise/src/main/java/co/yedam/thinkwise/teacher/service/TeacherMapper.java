package co.yedam.thinkwise.teacher.service;

import java.util.List;

public interface TeacherMapper {
	List<TeacherVO> teacherList();
	
	TeacherVO teacherSelect(TeacherVO vo);
	
	int teacherInsert(TeacherVO vo);
	int teacherUpdate(TeacherVO vo);
	int teacherDelete(TeacherVO vo);
}
