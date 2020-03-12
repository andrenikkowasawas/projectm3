package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.ResortServices;

@Repository("resortServicesRepository")
public interface ResortServicesRepository extends JpaRepository<ResortServices, Integer> {
	
	public ResortServices findById(int id);
	
	@Query(value = "SELECT * FROM `resort_services` WHERE `deleted` IS NULL", nativeQuery=true)
	List<ResortServices> findByNotDeleted();
}