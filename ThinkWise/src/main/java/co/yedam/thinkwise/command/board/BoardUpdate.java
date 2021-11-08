package co.yedam.thinkwise.command.board;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.thinkwise.board.service.BoardService;
import co.yedam.thinkwise.board.service.BoardVO;
import co.yedam.thinkwise.board.serviceImpl.BoardServiceImpl;
import co.yedam.thinkwise.comm.Command;

public class BoardUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		BoardService boardDao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		ServletContext context = request.getSession().getServletContext();
		String saveFolder = context.getRealPath("upload");
		session.setAttribute("dir", saveFolder);
		System.out.println(saveFolder);
		
		String image = "";
		String firstImage = "";
		String secondImage = "";
		String thirdImage = "";
		
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request, saveFolder, 30*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
			
			firstImage = multipartRequest.getFilesystemName("firstImage");
			secondImage = multipartRequest.getFilesystemName("secondImage");
			thirdImage = multipartRequest.getFilesystemName("thirdImage");
			
			image = firstImage+"/"+secondImage+"/"+thirdImage;
			
			vo.setBoardNo(Integer.parseInt(multipartRequest.getParameter("bid")));
			vo.setTitle(multipartRequest.getParameter("title"));
			vo.setContents(multipartRequest.getParameter("contents"));
			vo.setImage(image);
			
			System.out.println(vo.getBoardNo());
			System.out.println(vo.getTitle());
			System.out.println(vo.getContents());
			System.out.println(vo.getImage());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int n = boardDao.boardUpdate(vo);
		
		if (n != 1) {
			request.setAttribute("message", "보고서 수정을 실패했습니다.");
		} else {
			request.setAttribute("message", "보고서 "+n+"건 수정 됐습니다.");
		}
		
		return "board/boardSuccess";
		
	}

}
