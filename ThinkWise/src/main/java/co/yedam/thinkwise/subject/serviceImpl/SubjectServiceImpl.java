package co.yedam.thinkwise.subject.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.comm.DataSource;
import co.yedam.thinkwise.subject.service.SubjectMapper;
import co.yedam.thinkwise.subject.service.SubjectService;
import co.yedam.thinkwise.subject.service.SubjectVO;

public class SubjectServiceImpl implements SubjectService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private SubjectMapper map = sqlSession.getMapper(SubjectMapper.class);

	@Override
	public List<SubjectVO> subjectList() {
		return map.subjectList();
	}
	
	@Override
	public List<SubjectVO> subjectListAll() {
		return map.subjectListAll();
	}

	@Override
	public SubjectVO subjectSelect(SubjectVO vo) {
		return map.subjectSelect(vo);
	}

	@Override
	public int subjectInsert(SubjectVO vo) {
		return map.subjectInsert(vo);
	}

	@Override
	public int subjectUpdate(SubjectVO vo) {
		return map.subjectUpdate(vo);
	}

	@Override
	public int subjectDelete(SubjectVO vo) {
		return map.subjectDelete(vo);
	}

}
