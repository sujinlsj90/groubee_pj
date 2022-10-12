package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import com.spring.tutorial.dto.ApprovalInfoDTO;
import com.spring.tutorial.dto.ApproveDraftDTO;
import com.spring.tutorial.dto.CommonDTO;

public interface ApprovalDAO {
	
	//결재정보 - 회원정보데려오기
	public List<CommonDTO> selectMember();
	
	//결재정보 저장
	public void approvalInfoInsert(Map<String, Object> map);
	
	//저장된 결재 정보 뿌리기
	public List<ApprovalInfoDTO> selectLineView();
	
	//협조, 결재 수정하기
	public void updateCoApproval(Map<String, Object> map);
	
	//결재라인 개별삭제
	public void deleteCoApproval(Map<String, Object> map);
	
	//로그인 사원 정보(기안자)
	public List<CommonDTO> selectapprover(String id);
	
	//기안 후 기안사원 정보
	public List<ApprovalInfoDTO> selectapproverAfterApp(int load_id);
	
	//임시저장
	public void tempSave(ApproveDraftDTO dto);
	
	//기안하기
	public void approvereq(ApproveDraftDTO dto);
	
	//문서정보
	public List<ApproveDraftDTO> selectDraftInfo(int load_id);
	
	//결재라인 사원정보
	public List<ApprovalInfoDTO> selectGetterInfo(int load_id);
	
	//진행문서함리스트
	public List<ApproveDraftDTO> onapproval(String id);
	
	//완료문서함리스트
	public List<ApproveDraftDTO> comapproval(String id);
	
	//반려문서함리스트
	public List<ApproveDraftDTO> rejapproval(String id);
	
	//임시보관함
	public List<ApproveDraftDTO> templist(String id);
	

}
