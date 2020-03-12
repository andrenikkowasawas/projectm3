package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.ThemedDiner;

@Repository("themedDinerRepository")
public interface ThemedDinerRepository  extends JpaRepository<ThemedDiner, Integer> {

	
	public ThemedDiner findById(int id);
	
	@Query(value = "SELECT * FROM `themed_diner` WHERE `deleted` IS NULL", nativeQuery=true)
	List<ThemedDiner> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `themed_diner` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<ThemedDiner> findByDeleted();
}