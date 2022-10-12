package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.MessageDTO;

@Repository
public class MessageDAOImpl implements MessageDAO {
	
	@Autowired
	SqlSession sqlSession;

	// 받는사람 목록 - 부서
	@Override
	public List<MessageDTO> recipientList_depart() {
		System.out.println("dao - 받는사람 목록 - 부서");
		
		List<MessageDTO> list = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.recipientList_depart");
		
		return list;
	}

	// 받는사람 목록 - 부서별 사원명
//	@Override
//	public List<MessageDTO> recipientList_person() {
//		System.out.println("dao - 받는사람 목록 - 부서별 사원명");
//		
//		List<MessageDTO> list2 = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.recipientList_person");
//		
//		return list2;
//	}

	// 메세지 개수
//	@Override
//	public int messageInsert() {
//		System.out.println("dao - 쪽지 개수");
//		
//		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.MessageDAO.messageInsert");
//		
//		return selectCnt;
//	}

	// 메세지 보내기
//	@Override
//	public int messageSend(MessageDTO dto) {
//		System.out.println("dao - 메세지 보내기");
//		
//		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.MessageDAO.messageSend", dto);
//		
//		return insertCnt;
//	}

	// 받은메세지 리스트
//	@Override
//	public List<MessageDTO> getMsgList() {
//		System.out.println("dao - 받은메세지 리스트");
//		
//		List<MessageDTO> list = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.getMsgList");
//		
//		return list;
//	}

	// 보낸메세지 리스트
//	@Override
//	public List<MessageDTO> sendMsgList() {
//		System.out.println("dao - 보낸메세지 리스트");
//		
//		List<MessageDTO> list = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.sendMsgList");
//		
//		return list;
//	}
//
//	// 임시보관함 리스트
//	@Override
//	public List<MessageDTO> tempoMsgList() {
//		System.out.println("dao - 임시보관함 리스트");
//		
//		List<MessageDTO> list = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.tempoMsgList");
//		
//		return list;
//	}
//
//	// 휴지통 리스트
//	@Override
//	public List<MessageDTO> trashMsgList() {
//		System.out.println("dao - 휴지통 리스트");
//		
//		List<MessageDTO> list = sqlSession.selectList("com.spring.tutorial.dao.MessageDAO.trashMsgList");
//		
//		return list;
//	}
	

	
}
