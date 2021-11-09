package co.yedam.thinkwise.student.service;

import java.util.List;

public interface StudentService {
	List<StudentVO> studentList();
	
	StudentVO studentSelect(StudentVO vo);
	
	int studentInsert(StudentVO vo);
	int studentUpdate(StudentVO vo);
	int studentDelete(StudentVO vo);
}
