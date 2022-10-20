package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import com.spring.tutorial.dto.SecurityAdminListDTO;
import com.spring.tutorial.dto.SecurityDTO;

public interface SecurityDAO {

	public List<SecurityDTO> adminAddList(Map<String, Object> map);
	
	public int adminAddListCnt();
	
	public int selectAdmin(String id);
	
	public void updateAdmin(Map<String, Object> map);
	
	public void insertAdmin(Map<String, Object> map);
	
	public List<SecurityAdminListDTO> securityAdminList();
	
	public void adSecurityDel(String id);
}
