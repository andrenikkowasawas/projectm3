package com.bluewater.projectm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Admin;
import com.bluewater.projectm.repository.AdminRepository;

@Service
public class AdminService {
	
	@Autowired
	AdminRepository adminRepository;
	
	public boolean checkCredentiails(String username,String password) {
		
		Admin checkAdmin = adminRepository.findByUsername(username);
		
		if(checkAdmin == null)
			return false;
		if(checkAdmin.getPassword().equals(password))
			return true;
		
		return false;
	}
}