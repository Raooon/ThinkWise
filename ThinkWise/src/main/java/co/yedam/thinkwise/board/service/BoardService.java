package co.yedam.thinkwise.board.service;

import java.util.List;

public interface BoardService {

	List<BoardVO> boardList();
	
	BoardVO boardSelect(BoardVO vo);
	
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	
	int boardHitUpdate(BoardVO vo);
	int boardLikesUpdate(BoardVO vo);
}
