package com.spring.tutorial.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.tutorial.dao.MessageDAOImpl;
import com.spring.tutorial.dto.MessageDTO;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	MessageDAOImpl dao;
	
	// 메세지쓰기 - 받는사람
	@Override
	public void selectRecipient(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지쓰기 - 받는사람");
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.recipientList_depart();
		System.out.println("list => " + list);

		model.addAttribute("list", list);
	}
	
	// 메세지 보내기
	public void sendMessage(MultipartHttpServletRequest req, Model model) 
			throws ServletException, IOException {
	      System.out.println("서비스 => sendMessage");
	      
	      String id = (String)req.getSession().getAttribute("memberID"); // 작성자
	      System.out.println("id => " + id);
	      String[] getter_id_str = req.getParameterValues("msgPerson"); // 받는사람
	      String title = req.getParameter("example-subject"); // 제목
	      System.out.println("title => " + title);
	      String contents = req.getParameter("testedit1"); // 내용
	      System.out.println("contents => " + contents);
	      
	      String getter_id;
	      int InsertState = 0;
	      
	      MultipartFile file = req.getFile("file");
	      
	      //파일 유무에 관계없이 dao탈 수 있도록 예외처리
	      try {
	    	  String saveDir = req.getSession().getServletContext().getRealPath("/resources/draftupload/");
	          System.out.println("saveDir: " + saveDir);
	         
	         String realDir = saveDir;
	         System.out.println("realDir: " + saveDir);
	         FileInputStream fis = null;
	         FileOutputStream fos = null;
	         
	         file.transferTo(new File(saveDir + file.getOriginalFilename()));
	         
	         fis = new FileInputStream(saveDir + file.getOriginalFilename());
	         fos = new FileOutputStream(realDir + file.getOriginalFilename());
	         
	         int data = 0;
	         
	         while((data = fis.read()) != -1) {
	            fos.write(data);
	         }
	         fis.close();
	         fos.close();
	         if(fis != null)fis.close();
	           if(fos != null)fos.close();
	         
	      } catch(IOException e) {
	         e.printStackTrace();
	         
	      } finally {
	       //무조건 dao타기    
	           System.out.println(id +", " + title+ ", " + contents +  ", " + file);
	           
	         MessageDTO dto = new MessageDTO();
	         dto.setId(id);
	         dto.setTitle(title);
	         dto.setContents(contents);
	         
	         //nullif함수로 파일 없으면 null 들어갈 수 있도록 처리(테이블, dto에 nullif용 컬럼(변수) 추가 필요)
	         String files = "/tutorial/resources/draftupload/" + file.getOriginalFilename();
	         if (!files.equals("/tutorial/resources/draftupload/")) {
	            System.out.println("dto.files(): " + files);
	            dto.setFiles(files);
	            dto.setNonfiles("none");
	         } else {
	            dto.setFiles(files);
	            dto.setNonfiles(files);

	         }
	         
	         if(getter_id_str != null) {
		    	  for(int i=0; i<getter_id_str.length; i++) {
		    		  if(getter_id_str[i].equals("id") != true) {
		    			  getter_id = getter_id_str[i];
		    			  System.out.println("받는사람 => " + getter_id);
		    			  dto.setGetter_id(getter_id);
		    			  InsertState = dao.messageSend(dto);
		    		  }
		    	  }
		      } else {
		    	  System.out.println("받는사람 안들어감");
		      }
	         
	      } 
	     
	      System.out.println("InsertState => " + InsertState);
	      
	      model.addAttribute("InsertState", InsertState);
	}


	// 받은메세지함 리스트
	@Override
	public void inboxList(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 받은메세지함 리스트");
		String getter_id = (String)req.getSession().getAttribute("memberID");
		System.out.println("getter_id => " + getter_id);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.getMsgList(getter_id);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	
	// 보낸메세지함 리스트
	@Override
	public void sendboxList(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 받은메세지함 리스트");
		String id = (String)req.getSession().getAttribute("memberID");
		System.out.println("id => " + id);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.sendMsgList(id);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	
	// 임시보관함 리스트
	@Override
	public void tempoList(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 휴지통 리스트");
		String id = (String)req.getSession().getAttribute("memberID");
		System.out.println("id => " + id);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.tempoMsgList(id);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}

	// 휴지통 리스트
	@Override
	public void trashList(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 휴지통 리스트");
		String getter_id = (String)req.getSession().getAttribute("memberID");
		System.out.println("getter_id => " + getter_id);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.trashMsgList(getter_id);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}

	// 메세지 확인 - 받은메세지(읽음상태 변경)
	@Override
	public void chkDetail_get(HttpServletRequest req, Model model) throws ServletException, IOException {
		System.out.println("서비스 => 메세지 확인 - 받은메세지(읽음상태 변경)");
		
		int message_num = Integer.parseInt(req.getParameter("message_num"));
		System.out.println("message_num => " + message_num);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.readMsgDetail(message_num);
		System.out.println("list => " + list);
		
		// read_date가 있는지 확인
		int chkReadDate = dao.checkReadDate(message_num);
		System.out.println("chkReadDate => " + chkReadDate);
		
		int updateRead = 0;
		
		// read_date가 없으면
		if(chkReadDate == 0) {
			updateRead = dao.updateReadDate(message_num);
			System.out.println("updateRead => " + updateRead);
		}
		
		// 메세지 확인과 동시에 메세지 읽음상태 변경
		int updateState = dao.updateState_read(message_num);
		
		model.addAttribute("list", list);
		model.addAttribute("updateState", updateState);
		model.addAttribute("updateRead", updateRead);
	}
	
	// 메세지 확인 - 보낸메세지, 휴지통
	@Override
	public void chkDetail(HttpServletRequest req, Model model) throws ServletException, IOException {
		System.out.println("서비스 => 메세지 확인 - 보낸메세지, 휴지통");
		
		int message_num = Integer.parseInt(req.getParameter("message_num"));
		System.out.println("message_num => " + message_num);
		String name = req.getParameter("hiddenName"); // 받는사람 이름
		System.out.println("name => " + name);
		String depart_name = req.getParameter("hiddenDepart_name"); // 받는사람 부서
		System.out.println("depart_name => " + depart_name);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.readMsgDetail(message_num);
		dto.setDepart_name(depart_name);
		dto.setName(name);
		
		System.out.println("dto.name => " + dto.getName());
		System.out.println("dto.depart_name => " + dto.getDepart_name());
		System.out.println("list => " + list);
		
		// read_date가 있는지 확인
		int chkReadDate = dao.checkReadDate(message_num);
		System.out.println("chkReadDate => " + chkReadDate);
		
		model.addAttribute("list", list);
		model.addAttribute("chkReadDate", chkReadDate);
	}
	
	// 메세지 읽기 - 임시보관함 
	@Override
	public void chkDetailTempo(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 확인 - 임시메세지");
		
		int message_num = Integer.parseInt(req.getParameter("message_num"));
		System.out.println("message_num => " + message_num);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.readTempoDetail(message_num);

		System.out.println("list => " + list);
		
		// read_date가 있는지 확인
		int chkReadDate = dao.checkReadDate(message_num);
		System.out.println("chkReadDate => " + chkReadDate);
		
		model.addAttribute("list", list);
		model.addAttribute("chkReadDate", chkReadDate);
	}
	
	// 메세지 읽음 상태로 변경
	@Override
	public void changeState_read(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 읽음 상태로 변경");
		
		int message_num = 0;
		String[] msgNum_str = req.getParameterValues("chkList");
		
		int updateState = 0;
		
		if(msgNum_str != null) {
	         for(int i=0; i<msgNum_str.length; i++) {
	            if(msgNum_str[i].equals("chkList") != true) {
	            	message_num = Integer.parseInt(msgNum_str[i]);
	            	updateState = dao.updateState_read(message_num);
	            }
	         }
	      }
		
		System.out.println("updateState => " + updateState);
		
		model.addAttribute("updateState", updateState);
	}

	// 메세지 안읽음 상태로 변경
	@Override
	public void changeState_unread(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 안읽음 상태로 변경");
		
		int message_num = 0;
		String[] msgNum_str = req.getParameterValues("chkList");
		
		int updateState = 0;
		
		if(msgNum_str != null) {
	         for(int i=0; i<msgNum_str.length; i++) {
	            if(msgNum_str[i].equals("chkList") != true) {
	            	message_num = Integer.parseInt(msgNum_str[i]);
	            	updateState = dao.updateState_unread(message_num);
	            }
	         }
	      }
		
		System.out.println("updateState => " + updateState);
		
		model.addAttribute("updateState", updateState);
		
	}

	// 메세지 휴지통으로 이동
	@Override
	public void deleteMsg(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 삭제");
		
		int message_num = 0;
		String[] msgNum_str = req.getParameterValues("chkList");
		
		int updateState = 0;
		
		if(msgNum_str != null) {
	         for(int i=0; i<msgNum_str.length; i++) {
	            if(msgNum_str[i].equals("chkList") != true) {
	            	message_num = Integer.parseInt(msgNum_str[i]);
	            	updateState = dao.deleteMessage(message_num);
	            }
	         }
	      }
		
		System.out.println("updateState => " + updateState);
		
		model.addAttribute("updateState", updateState);
	}
	
	// 메세지 복원
	@Override
	public void returnMsg(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 복원");
		
		int message_num = 0;
		String[] msgNum_str = req.getParameterValues("chkList");
		
		int updateState = 0;
		
		if(msgNum_str != null) {
	         for(int i=0; i<msgNum_str.length; i++) {
	            if(msgNum_str[i].equals("chkList") != true) {
	            	message_num = Integer.parseInt(msgNum_str[i]);
	            	updateState = dao.deleteMessage(message_num);
	            }
	         }
	      }
		
		System.out.println("updateState => " + updateState);
		
		model.addAttribute("updateState", updateState);
	}

	// 메세지 완전삭제
	@Override
	public void completeDeleteMsg(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 메세지 완전삭제");
		
		int message_num = 0;
		String[] msgNum_str = req.getParameterValues("chkList");
		
		int deleteState = 0;
		
		if(msgNum_str != null) {
	         for(int i=0; i<msgNum_str.length; i++) {
	            if(msgNum_str[i].equals("chkList") != true) {
	            	message_num = Integer.parseInt(msgNum_str[i]);
	            	deleteState = dao.completeDeleteMessage(message_num);
	            }
	         }
	      }
		
		System.out.println("deleteState => " + deleteState);
		
		model.addAttribute("deleteState", deleteState);
	}

	// 재발송
	@Override
	public void resendMessage(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 재발송");

		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		dto.setTitle(req.getParameter("title"));
		dto.setContents(req.getParameter("contents"));

		System.out.println();
		
	}

	// 발신취소
	@Override
	public void cancleMsg(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 발신취소");
		
		int message_num = Integer.parseInt(req.getParameter("message_num"));
		System.out.println("message_num => " + message_num);
		
		// 상대방이 읽었는지 안읽었는지 체크
		int cancleChk = dao.cancleMsgChk(message_num);
		System.out.println("cancleChk => " + cancleChk);
		
		int deleteState = 0;
		
		if(cancleChk == 1) {
			deleteState = dao.completeDeleteMessage(message_num);
			System.out.println("deleteState => " + deleteState);
		}
		
		model.addAttribute("deleteState", deleteState);
	}
	
	// 임시저장
	public void tempoMessage(MultipartHttpServletRequest req, Model model) 
			throws ServletException, IOException {
	      System.out.println("서비스 => 임시저장");
	      
	      String id = (String)req.getSession().getAttribute("memberID"); // 작성자
	      System.out.println("id => " + id);
	      String[] getter_id_str = req.getParameterValues("msgPerson"); // 받는사람
	      String title = req.getParameter("example-subject"); // 제목
	      System.out.println("title => " + title);
	      String contents = req.getParameter("testedit1"); // 내용
	      System.out.println("contents => " + contents);
	      
	      String getter_id;
	      int InsertState = 0;
	      
	      MultipartFile file = req.getFile("file");
	      
	      //파일 유무에 관계없이 dao탈 수 있도록 예외처리
	      try {
	    	  String saveDir = req.getSession().getServletContext().getRealPath("/resources/draftupload/");
	          System.out.println("saveDir: " + saveDir);
	         
	         String realDir = saveDir;
	         System.out.println("realDir: " + saveDir);
	         FileInputStream fis = null;
	         FileOutputStream fos = null;
	         
	         file.transferTo(new File(saveDir + file.getOriginalFilename()));
	         
	         fis = new FileInputStream(saveDir + file.getOriginalFilename());
	         fos = new FileOutputStream(realDir + file.getOriginalFilename());
	         
	         int data = 0;
	         
	         while((data = fis.read()) != -1) {
	            fos.write(data);
	         }
	         fis.close();
	         fos.close();
	         if(fis != null)fis.close();
	           if(fos != null)fos.close();
	         
	      } catch(IOException e) {
	         e.printStackTrace();
	         
	      } finally {
	       //무조건 dao타기    
	           System.out.println(id +", " + title+ ", " + contents +  ", " + file);
	           
	         MessageDTO dto = new MessageDTO();
	         dto.setId(id);
	         dto.setTitle(title);
	         dto.setContents(contents);
	         
	         //nullif함수로 파일 없으면 null 들어갈 수 있도록 처리(테이블, dto에 nullif용 컬럼(변수) 추가 필요)
	         String files = "/tutorial/resources/draftupload/" + file.getOriginalFilename();
	         if (!files.equals("/tutorial/resources/draftupload/")) {
	            System.out.println("dto.files(): " + files);
	            dto.setFiles(files);
	            dto.setNonfiles("none");
	         } else {
	            dto.setFiles(files);
	            dto.setNonfiles(files);

	         }
	         
	         if(getter_id_str != null) {
		    	  for(int i=0; i<getter_id_str.length; i++) {
		    		  if(getter_id_str[i].equals("id") != true) {
		    			  getter_id = getter_id_str[i];
		    			  System.out.println("받는사람 => " + getter_id);
		    			  dto.setGetter_id(getter_id);
		    			  InsertState = dao.sendTempoMsg(dto);
		    		  }
		    	  }
		      } else {
		    	  System.out.println("받는사람 안들어감");
		      }
	         
	      } 
	     
	      System.out.println("InsertState => " + InsertState);
	      
	      model.addAttribute("InsertState", InsertState);
	}

	// 임시저장 불러오기
	@Override
	public void getTempoMessage(MultipartHttpServletRequest req, Model model) 
			throws ServletException, IOException {
		System.out.println("서비스 => 임시저장 불러오기");
		
		int message_num = Integer.parseInt(req.getParameter("message_num")); // 메세지 번호
		System.out.println("message_num => " + message_num);
//		String name = req.getParameter("name"); // 받는사람 이름
//		System.out.println("name => " + name);
//		String depart_name = req.getParameter("depart_name"); // 받는사람 부서
//		System.out.println("depart_name => " + depart_name);
		
		// dto 불러오기
		MessageDTO dto = new MessageDTO();
		
		List<MessageDTO> list = dao.getTempoMsg(message_num);
//		dto.setName(name);
//		dto.setDepart_name(depart_name);
//		System.out.println("dto.name => " + dto.getName());
//		System.out.println("dto.depart_name => " + dto.getDepart_name());
		
		model.addAttribute("list", list);
	}
	

	     
	      

	
	

}
