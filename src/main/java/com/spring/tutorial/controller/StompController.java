package com.spring.tutorial.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.spring.tutorial.dao.ChatDAOImpl;
import com.spring.tutorial.dto.ChatMessageDTO;
import com.spring.tutorial.dto.WorkerDTO;

@Controller
public class StompController {

	@Autowired
	private SimpMessagingTemplate template; // 특정 Broker로 메시지 전달
	
	@Autowired
	ChatDAOImpl dao;
	
	//Client가 SEND할 수 있는 경로
    //stompConfig에서 설정한 applicationDestinationPrefixes와 @MessageMapping 경로가 병합됨
    //"/pub/chat/enter"
    @MessageMapping("/chat/enter")
    public void enter(ChatMessageDTO message){
    	
    	String id = message.getWriter();
    	String name = dao.idToName(id);
        message.setMessage(name + "님이 채팅방에 참여하였습니다.");
        message.setName(name);
        
        System.out.println("message : " + message);
        
        // db에 저장하기
        dao.insertMsg(message);
        
        // convertAndSend('보낼 url', 메세지)
        template.convertAndSend("/sub/chat/room/" + message.getRoomId(), message);
    }
    
    @MessageMapping("/chat/message")
    public void message(ChatMessageDTO message){
    	
    	// 메세지 보낸 사람 사번으로 이름 구하기
    	String id = message.getWriter();
    	String name = dao.idToName(id);
    	message.setName(name);
    	
    	System.out.println("message : " + message);
    	
    	// db에 저장하기 ( 보낼때만 저장)
    	dao.insertMsg(message);
    	
    	// 채팅방으로 보내기
        template.convertAndSend("/sub/chat/room/" + message.getRoomId(), message);
        
        // 해당 방 번호에 참여한 사람들 구하기
    	List<WorkerDTO> members = dao.chatMemberList(message.getRoomId());
    	System.out.println("members : " + members);
        // 알림 보내기
        for(int i=0; i < members.size(); i++) {
        	System.out.println("/sub/alarm/" + members.get(i).getId() + "으로");
        	System.out.println(message + "보냄");
        	template.convertAndSend("/sub/alarm/" + members.get(i).getId(), message);
        }
    }
    
    @MessageMapping("/chat/close")
    public void close(ChatMessageDTO message){
    	
    	String id = message.getWriter();
    	String name = dao.idToName(id);
        message.setMessage(name + "님이 채팅방을 나갔습니다.");
        
        dao.insertMsg(message);
        
        // convertAndSend('보낼 url', 메세지)
        template.convertAndSend("/sub/chat/room/" + message.getRoomId(), message);
    }
    
}
