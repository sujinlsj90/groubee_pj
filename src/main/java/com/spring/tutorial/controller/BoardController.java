package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.service.BoardServiceImpl;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardServiceImpl service;
	
	// 게시판 목록
	@RequestMapping("board.bo")
	public String board(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("BoardController -> board.bo");
		
		service.boardList(req, model);
		
		return "board/board";
	}
}
