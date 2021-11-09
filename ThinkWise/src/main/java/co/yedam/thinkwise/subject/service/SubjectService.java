package co.yedam.thinkwise.subject.service;

import java.util.List;

public interface SubjectService {
	List<SubjectVO> subjectList();
	List<SubjectVO> subjectListAll();
	
	SubjectVO subjectSelect(SubjectVO vo);
	
	int subjectInsert(SubjectVO vo);
	int subjectUpdate(SubjectVO vo);
	int subjectDelete(SubjectVO vo);
}
