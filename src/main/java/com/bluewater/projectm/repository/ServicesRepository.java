package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.InRoomOrder;
import com.bluewater.projectm.entity.Services;

@Repository("servicesRepository")
public interface ServicesRepository extends JpaRepository<Services, Integer>  {
	
	public Services findById(int id);
	@Query(value = "SELECT * FROM `services` WHERE `deleted` IS NULL", nativeQuery=true)
	List<Services> findByNotDeleted();
}