package co.yedam.thinkwise.board.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.thinkwise.board.service.BoardMapper;
import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.comm.DataSource;

public class BoardServiceImpl implements BoardService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	
	@Override
	public List<BoardVO> boardList() {
		return map.boardList();
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		return map.boardDelete(vo);
	}

	@Override
	public int boardHitUpdate(BoardVO vo) {
		return map.boardHitUpdate(vo);
	}

	@Override
	public int boardLikesUpdate(BoardVO vo) {
		return map.boardLikesUpdate(vo);
	}
	
}
