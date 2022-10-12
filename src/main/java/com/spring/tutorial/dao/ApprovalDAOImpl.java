package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.ApprovalInfoDTO;
import com.spring.tutorial.dto.ApproveDraftDTO;
import com.spring.tutorial.dto.CommonDTO;
@Repository
public class ApprovalDAOImpl implements ApprovalDAO{
	@Autowired
	SqlSession sqlSession;
	
	//결재정보 리스트 불러오기
	@Override
	public List<CommonDTO> selectMember() {
		System.out.println("ApprovalDAO - selectMember");
		List<CommonDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectMember");
		return list;
	}

	//결재정보 삭제 - 다시  insert하기 위함
	public int approvalInfoDelete() {
		System.out.println("ApprovalDAO - approvalInfoDelete");
		int deleteInt = 0;
		int selectCnt  = sqlSession.selectOne("com.spring.tutorial.dao.ApprovalDAO.approvalInfoDel_sel");
		if (selectCnt != 0) {
			deleteInt  = sqlSession.delete("com.spring.tutorial.dao.ApprovalDAO.approvalInfoDelete");
		}
		return deleteInt;
	}
	
	//결재정보 저장
	@Override
	public void approvalInfoInsert(Map<String, Object> map) {
		System.out.println("ApprovalDAO - approvalInfoInsert");
		sqlSession.insert("com.spring.tutorial.dao.ApprovalDAO.approvalInfoInsert", map);
		
	}


	//저장된 결재정보 뿌리기
	@Override
	public List<ApprovalInfoDTO> selectLineView() {
		System.out.println("ApprovalDAO - selectLineView");
		List<ApprovalInfoDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectLineView");
		return list;
	}

	//결재, 협조 수정하기
	@Override
	public void updateCoApproval(Map<String, Object> map) {
		System.out.println("ApprovalDAO - updateCoApproval");
		sqlSession.update("com.spring.tutorial.dao.ApprovalDAO.updateCoApproval", map);
		
	}

	//결재라인 개별삭제
	@Override
	public void deleteCoApproval(Map<String, Object> map) {
		System.out.println("ApprovalDAO - deleteCoApproval");
		sqlSession.delete("com.spring.tutorial.dao.ApprovalDAO.deleteCoApproval", map);
		
	}
	
	//기안사원정보
	@Override
	public List<CommonDTO> selectapprover(String id) {
		System.out.println("ApprovalDAO - selectapprover");
		List<CommonDTO> list2 = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectapprover", id);
		return list2;
	}
	
	//문서 저장 후 기안사원정보
	@Override
	public List<ApprovalInfoDTO> selectapproverAfterApp(int load_id) {
		System.out.println("ApprovalDAO - selectapproverAfterApp");
		List<ApprovalInfoDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectapproverAfterApp", load_id);
		return list;
	}
	
	//기안하기
	@Override
	public void approvereq(ApproveDraftDTO dto) {
		System.out.println("ApprovalDAO - approvereq");
		sqlSession.insert("com.spring.tutorial.dao.ApprovalDAO.approvereq", dto);
	}

	//임시저장
	@Override
	public void tempSave(ApproveDraftDTO dto) {
		System.out.println("ApprovalDAO - tempSave");
		sqlSession.insert("com.spring.tutorial.dao.ApprovalDAO.tempSave", dto);
	}

	//문서정보
	@Override
	public List<ApproveDraftDTO> selectDraftInfo(int load_id) {
		System.out.println("ApprovalDAO - selectDraftInfo");
		List<ApproveDraftDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectDraftInfo", load_id);
		return list;
	}
	
	//결재라인 사원정보
	@Override
	public List<ApprovalInfoDTO> selectGetterInfo(int load_id) {
		System.out.println("ApprovalDAO - selectapprover");
		List<ApprovalInfoDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.selectGetterInfo", load_id);
		return list;
	}

	//기안진행문서함
	@Override
	public List<ApproveDraftDTO> onapproval(String id) {
		System.out.println("ApprovalDAO - onapproval");
		List<ApproveDraftDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.onapproval", id);
		return list;
	}

	//완료문서함
	@Override
	public List<ApproveDraftDTO> comapproval(String id) {
		System.out.println("ApprovalDAO - onapproval");
		List<ApproveDraftDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.comapproval", id);
		return list;
	}

	//반려문서함
	@Override
	public List<ApproveDraftDTO> rejapproval(String id) {
		System.out.println("ApprovalDAO - onapproval");
		List<ApproveDraftDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.rejapproval", id);
		return list;
	}

	//임시보관함
	@Override
	public List<ApproveDraftDTO> templist(String id) {
		System.out.println("ApprovalDAO - onapproval");
		List<ApproveDraftDTO> list = sqlSession.selectList("com.spring.tutorial.dao.ApprovalDAO.templist", id);
		return list;
	}



}
