package com.spring.tutorial.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.BoardDAOImpl;
import com.spring.tutorial.dto.BoardDTO;
import com.spring.tutorial.page.Paging;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAOImpl dao;
	
	// 게시글 목록
	@Override
	public void boardList(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 게시글 목록");
		
		// 3단계. 화면으로부터 입력받은 값을 받는다.
		// 페이지 번호 클릭시
		String pageNum = req.getParameter("pageNum");
		String category = req.getParameter("category");
		if(category == null) {
			category = "0";
		}
		
		Paging paging = new Paging(pageNum);
		
		// 5-1. 전체 게시글 갯수 카운트
		int total = dao.boardCnt();
		System.out.println("게시물 total : " + total);
		paging.setTotalCount(total);
		
		int start = paging.getStartRow(); // 페이지별 시작 번호
		int end = paging.getEndRow();		// 페이지별 끝번호
		
		Map<String,Object> map = new HashMap<>();
		map.put("start",start);
		map.put("end",end);
		map.put("category",category);
		
		// 5-2. 게시글 목록
		List<BoardDTO> list = null;
		if(total > 0) {
			list = dao.boardList(map);
		}
		
		System.out.println("list : " + list);
		
		// 6단계. jsp로 처리 결과 전달
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
	}
	
//	// 게시글 작성 처리
//	@Override
//	public void boardInsertAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 게시글 작성 처리");
//		
//		// dto 생성
//		BoardDTO dto = new BoardDTO();
//		
//		// 3단계. 화면으로부터 입력받은 값을 dto에 담는다
//		dto.setTitle(req.getParameter("title"));
//		dto.setCategory(req.getParameter("category"));
//		dto.setContent(req.getParameter("content"));
//		dto.setWriter(req.getParameter("writer"));
//		
//		// 5단계. 글쓰기 처리
//		int insertCnt = dao.boardInsert(dto);
//		
//		// 6단계. jsp로 처리 결과 넘기기
//		model.addAttribute("insertCnt", insertCnt);
//	}
//	
//	
//	// 게시글 상세페이지
//	@Override
//	public void boardDetailAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 게시글 상세페이지");
//		
//		/* <a href="${path}/board_detailAction.bo?num=${dto.num}"> 
//		 * get형식으로 num값 받음 => num에 해당하는 글의 조회수 증가, 상세페이지 열기
//		 */
//		// 3단계. 화면으로부터 입력받은 값을 받는다.
//		int num = Integer.parseInt(req.getParameter("num"));
//		System.out.println("게시글번호 : " + num);
//		
//		// 5-1. 조회수 증가
//		dao.plusReadCnt(num);
//		
//		// 5-2. 상세페이지
//		BoardDTO dto = dao.getBoardDetail(num);
//		
//		// 6단계. jsp로 처리 결과 전달
//		model.addAttribute("dto", dto);
//	}
//
//	// 게시글 수정처리
//	@Override
//	public void boardUpdateAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 게시글 수정처리");
//		
//		// 3단계. 화면으로부터 입력받은 값, hidden 값을 받는다.
//		BoardDTO dto = new BoardDTO();
//		dto.setNum(Integer.parseInt(req.getParameter("num")));
//		dto.setCategory(req.getParameter("category"));
//		dto.setTitle(req.getParameter("title"));
//		dto.setContent(req.getParameter("content"));
//		
//		// 5단계. 게시글 수정 처리
//		dao.updateBoard(dto);
//		
//	}
//	
//	// 게시글 삭제처리
//	@Override
//	public void boardDeleteAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 게시글 삭제처리");
//		
//		// 3단계. 화면으로부터 입력받은 값을 받는다.
//		int num = Integer.parseInt(req.getParameter("num"));
//		
//		// 5단계. 게시글 삭제 처리
//		dao.deleteBoard(num);
//		
//	}
//
//	// 댓글목록 처리
//	@Override
//	public void commentListAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => commentListAction");
//		
//		// 3단계. 화면으로부터 입력받은 값, hidden값(num)을 받는다.
//		int board_num = Integer.parseInt(req.getParameter("num"));
//		System.out.println("board_num : " + board_num);
//		
//		// 5단계. 댓글 목록 조회
//		List<BoardCommentDTO> commentList = dao.commentList(board_num);
//		
//		// 6단계. jsp로 처리 결과 전달
//		model.addAttribute("commentList", commentList); // => comment_list.jsp(컨트롤러에서 forward)
//		
//		// comment_list()의 콜백함수의 result 전달
//	}
//	
//	// 댓글 추가처리
//	@Override
//	public void commentAddAction(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => commentAddAction");
//		
//		// 3단계. 화면으로부터 입력받은 값을 받는다.
//		BoardCommentDTO dto = new BoardCommentDTO();
//		dto.setBoard_num(Integer.parseInt(req.getParameter("board_num")));
//		dto.setWriter((String)req.getSession().getAttribute("customerID"));
//		dto.setContent(req.getParameter("content"));
//		
//		// 5단계. 댓글 insert
//		dao.commentInsert(dto);
//		
//		// 실행이 끝나면 board_detail.jsp의 comment_add() 콜백함수(success)의 result
//	}

	

}
