package co.yedam.thinkwise.classes.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.classes.service.MemberClassMapper;
import co.yedam.thinkwise.classes.service.MemberClassService;
import co.yedam.thinkwise.classes.service.MemberClassVO;
import co.yedam.thinkwise.comm.DataSource;

public class MemberClassServiceImpl implements MemberClassService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberClassMapper map = sqlSession.getMapper(MemberClassMapper.class);
	
	@Override
	public List<MemberClassVO> selectClassList() {
		return map.selectClassList();
	}
	@Override
	public MemberClassVO classSelect(MemberClassVO vo) {
		return map.classSelect(vo);
	}
	@Override
	public int classInsert(MemberClassVO vo) {
		return map.classInsert(vo);
	}
	@Override
	public int classUpdate(MemberClassVO vo) {
		return map.classUpdate(vo);
	}
	@Override
	public int classDelete(MemberClassVO vo) {
		return map.classDelete(vo);
	}
	
	
}
