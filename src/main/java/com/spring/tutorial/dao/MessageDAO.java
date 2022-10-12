package com.spring.tutorial.dao;

import java.util.List;

import com.spring.tutorial.dto.MessageDTO;

public interface MessageDAO {
	
	// 받는사람 목록 - 부서
	public List<MessageDTO> recipientList_depart();
	
	// 받는사람 목록 - 부서별 사원명
//	public List<MessageDTO> recipientList_person();
	
	// 메세지 개수
//	public int messageInsert();
	
	// 메세지 보내기
//	public int messageSend(MessageDTO dto);
	
	// 받은메세지 리스트
//	public List<MessageDTO> getMsgList();
	
	// 보낸메세지 리스트
//	public List<MessageDTO> sendMsgList();
		
	// 임시보관함 리스트
//	public List<MessageDTO> tempoMsgList();
	
	// 휴지통 리스트
//	public List<MessageDTO> trashMsgList();
}
