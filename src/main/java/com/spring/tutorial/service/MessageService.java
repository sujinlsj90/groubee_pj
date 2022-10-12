package com.spring.tutorial.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MessageService {
	
	// 받는 사람
	public void selectRecipient(HttpServletRequest req, Model model)
			throws ServletException, IOException;
	
	// 메세지 보내기
//	public void sendMessage(HttpServletRequest req, Model model)
//			throws ServletException, IOException;
	
	// 메세지 개수
//	public void messageCnt(HttpServletRequest req, Model model)
//			throws ServletException, IOException;
	
	// 받은메세지함 리스트
//	public void inboxList(HttpServletRequest req, Model model)
//			throws ServletException, IOException;
	
	
}
