package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.BoardDTO;


@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	SqlSession sqlSession;

	//게시글 목록
	@Override
	public List<BoardDTO> boardList(Map<String, Object> map) {
		System.out.println("DAO - boardList");
		return sqlSession.selectList("com.spring.tutorial.dao.BoardDAO.boardList", map);
	}
	
	// 게시글 갯수 구하기
	@Override
	public int boardCnt() {
		System.out.println("DAO - boardCnt");
		return sqlSession.selectOne("com.spring.tutorial.dao.BoardDAO.boardCnt");
	}
	
//	// 게시글 작성 처리
//	@Override
//	public int boardInsert(BoardDTO dto) {
//		System.out.println("DAO - boardInsert");
//		return sqlSession.insert("spring.pj_117.ksy_b.dao.BoardDAO.boardInsert", dto);
//	}
//	
//	// 게시글 상세페이지
//	@Override
//	public BoardDTO getBoardDetail(int num) {
//		System.out.println("DAO - getBoardDetail");
//		return sqlSession.selectOne("spring.pj_117.ksy_b.dao.BoardDAO.getBoardDetail",num);
//	}
//	
//	// 조회수 증가
//	@Override
//	public void plusReadCnt(int num) {
//		System.out.println("DAO - plusReadCnt");
//		sqlSession.selectOne("spring.pj_117.ksy_b.dao.BoardDAO.plusReadCnt",num);
//	}
//	
//	// 게시글 수정처리
//	@Override
//	public void updateBoard(BoardDTO dto) {
//		System.out.println("DAO - updateBoard");
//		sqlSession.update("spring.pj_117.ksy_b.dao.BoardDAO.updateBoard",dto);
//	}
//
//	// 게시글 삭제처리
//	@Override
//	public void deleteBoard(int num) {
//		System.out.println("DAO - deleteBoard");
//		sqlSession.update("spring.pj_117.ksy_b.dao.BoardDAO.deleteBoard",num);
//	}
//	
//	// 댓글목록
//	@Override
//	public List<BoardCommentDTO> commentList(int board_num) {
//		System.out.println("dao - commentList ");
//		return sqlSession.selectList("spring.pj_117.ksy_b.dao.BoardDAO.commentList",board_num);
//	}
//
//	// 댓글 추가처리
//	@Override
//	public void commentInsert(BoardCommentDTO dto) {
//		System.out.println("DAO - commentInsert");
//		sqlSession.insert("spring.pj_117.ksy_b.dao.BoardDAO.commentInsert", dto);
//	}

}
