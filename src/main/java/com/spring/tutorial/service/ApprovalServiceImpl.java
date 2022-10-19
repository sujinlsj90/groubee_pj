package com.spring.tutorial.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.ApprovalDAOImpl;
import com.spring.tutorial.dto.ApprovalInfoDTO;
import com.spring.tutorial.dto.ApproveDraftDTO;
import com.spring.tutorial.dto.CommonDTO;

@Service
public class ApprovalServiceImpl implements ApprovalService{
	@Autowired
	ApprovalDAOImpl dao;

	//새결재진행 -> 결재정보뿌리기
	@Override
	public void selectFormList(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - selectFormList");
		
		List<CommonDTO> list = dao.selectMember();
		model.addAttribute("list", list);
		
	}

	//결재정보 저장
	@Override
	public void approvalInfoInsertAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - approvalInfoInsertAction");
		String category = req.getParameter("category");
		String[] getter_id = req.getParameterValues("getter_id");
		String id = (String) req.getSession().getAttribute("memberID");
		
		dao.approvalInfoDelete();
		if(getter_id != null) {
			for(int i=0;i<getter_id.length;i++){
				System.out.println(category + ", "  + id + ", " + getter_id[i]);
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("category", category);
				map.put("id", id);
				map.put("getter_id", getter_id[i]);
				
				dao.approvalInfoInsert(map);
			} 
		}else {
			System.out.println("결재정보 수정에 실패했습니다");
		}
	}

	//저장된 결제라인 정보 뿌리기
	@Override
	public void selectLineViewAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - selectLineViewAction");
		String id = (String) req.getSession().getAttribute("memberID");
		List<ApprovalInfoDTO> list = dao.selectLineView();
		List<CommonDTO> list2 = dao.selectapprover(id); 
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		
		
		
	}

	//결재, 협조 수정하기
	@Override
	public void changecoApproveAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - changecoApproveAction");
		String co_approve = req.getParameter("co_approve");
		String getter_id = req.getParameter("getter_id");
		int load_id = Integer.parseInt(req.getParameter("load_id"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("co_approve", co_approve);
		map.put("getter_id", getter_id);
		map.put("load_id", load_id);
		
		dao.updateCoApproval(map);
		
	}

	
	//결재라인 개별삭제
	@Override
	public void deleteco_approveAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - deleteco_approveAction");
		
		String getter_id = req.getParameter("getter_id");
		int load_id = Integer.parseInt(req.getParameter("load_id"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("getter_id", getter_id);
		map.put("load_id", load_id);
		
		dao.deleteCoApproval(map);
		
	}

	//임시보관insert
	@Override
	public void tempSaveAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - tempSaveAction");
		int load_id = Integer.parseInt(req.getParameter("load_id"));
		String id = (String) req.getSession().getAttribute("memberID");
		String depart_name = req.getParameter("depart_name");
		String category = req.getParameter("category");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String files = req.getParameter("files");
		
		System.out.println(depart_name +", " + category+ ", " + title +  ", " + content +", " + files);
		ApproveDraftDTO dto = new ApproveDraftDTO();
		dto.setLoad_id(load_id);
		dto.setId(id);
		dto.setDepart_name(depart_name);
		dto.setCategory(category);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setFiles(files);
		
		dao.tempSave(dto);
		
		//기안문서정보
		List<ApproveDraftDTO> list = dao.selectDraftInfo(load_id);
		//기안사원정보
		List<ApprovalInfoDTO> list2 = dao.selectapproverAfterApp(load_id);
		//결재라인사원정보
		List<ApprovalInfoDTO> list3 = dao.selectGetterInfo(load_id);
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		
	}

	//문서기안하기
	@Override
	public void approvereqAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - approvereqAction");
		int load_id = Integer.parseInt(req.getParameter("load_id"));
		String id = (String) req.getSession().getAttribute("memberID");
		String depart_name = req.getParameter("depart_name");
		String category = req.getParameter("category");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String files = req.getParameter("files");
		
		System.out.println(depart_name +", " + category+ ", " + title +  ", " + content +", " + files);
		ApproveDraftDTO dto = new ApproveDraftDTO();
		dto.setLoad_id(load_id);
		dto.setId(id);
		dto.setDepart_name(depart_name);
		dto.setCategory(category);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setFiles(files);
		
		dao.approvereq(dto);
		
		//기안문서정보
		List<ApproveDraftDTO> list = dao.selectDraftInfo(load_id);
		//기안사원정보
		List<ApprovalInfoDTO> list2 = dao.selectapproverAfterApp(load_id);
		//결재라인사원정보
		List<ApprovalInfoDTO> list3 = dao.selectGetterInfo(load_id);
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		
	}

	//기안-진행문서함리스트
	@Override
	public void onapprovalAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - selectLineViewAction");
		String id = (String) req.getSession().getAttribute("memberID");
		List<ApproveDraftDTO> list = dao.onapproval(id);
		model.addAttribute("list", list);
		
	}

	//기안-완료문서함리스트
	@Override
	public void comapprovalAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - comapprovalAction");
		String id = (String) req.getSession().getAttribute("memberID");
		List<ApproveDraftDTO> list = dao.comapproval(id);
		model.addAttribute("list", list);
		
	}

	//기안-반려문서함리스트
	@Override
	public void rejapprovalAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - selectLineViewAction");
		String id = (String) req.getSession().getAttribute("memberID");
		List<ApproveDraftDTO> list = dao.rejapproval(id);
		model.addAttribute("list", list);
		
	}

	//임시보관함리스트
	@Override
	public void templistAction(HttpServletRequest req, Model model) {
		System.out.println("ApprovalService - selectLineViewAction");
		String id = (String) req.getSession().getAttribute("memberID");
		List<ApproveDraftDTO> list = dao.templist(id);
		model.addAttribute("list", list);
		
	}

	

}
