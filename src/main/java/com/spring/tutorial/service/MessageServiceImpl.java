package com.spring.tutorial.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.MessageDAOImpl;
import com.spring.tutorial.dto.MessageDTO;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	MessageDAOImpl dao;
	
	// 받는 사람
	@Override
	public void selectRecipient(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 받는 사람");
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.recipientList_depart();
		System.out.println("list => " + list);
		
//		List<MessageDTO> list2 = dao.recipientList_person();
//		System.out.println("list2 => " + list2);
		
		model.addAttribute("list", list);
//		model.addAttribute("list2", list2);
	}

	// 메세지 보내기
//	@Override
//	public void sendMessage(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 메세지 보내기");
//		
//		// dto 불러오기
//		MessageDTO dto = new MessageDTO();
//		
//		// 화면에서 값 받아오기
//		dto.setName(req.getParameter("msgPerson"));
//		dto.setTitle(req.getParameter("msgTitle"));
//		dto.setContents(req.getParameter("msgContent"));
//		dto.setFiles(req.getParameter("file"));
//		
//		System.out.println("msgPerson : " + dto.getName());
//		System.out.println("msgTitle : " + dto.getName());
//		System.out.println("msgPerson : " + dto.getName());
//		System.out.println("msgPerson : " + dto.getName());
//		
//		
//		
//	}
	
	// 메세지 개수
//	@Override
//	public void messageCnt(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 메세지 개수");
//		
//		
//	}

	// 받은메세지함 리스트
//	@Override
//	public void inboxList(HttpServletRequest req, Model model) 
//			throws ServletException, IOException {
//		System.out.println("서비스 => 받은메세지함 리스트");
//		String getter_id = (String)req.getSession().getAttribute("memberID");
//		System.out.println("getter_id => " + getter_id);
//		
//		// dto 불러오기
//		MessageDTO dto = new MessageDTO();
//		
//		List<MessageDTO> list = dao.getMsgList();
//		System.out.println("list => " + list);
//		
//		
//	}

	
	

}
