package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.Dining;

@Repository ("diningRepository")
public interface DiningRepository extends JpaRepository<Dining, Integer> {

	public Dining findById(int id);
	
	List<Dining> findByDeleted(String str);
	
	@Query(value = "SELECT * FROM `dining` WHERE `deleted` IS NULL", nativeQuery=true)
	List<Dining> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `dining` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<Dining> findByDeleted();
}