package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.Admin;

@Repository ("adminReposiitory")
public interface AdminRepository extends JpaRepository<Admin, Integer>{

	public Admin findByUsername(String username);

}