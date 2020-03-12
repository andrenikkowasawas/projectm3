package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.InRoomDiningCategory;

@Repository("inRoomDiningCategoryRepository")
public interface InRoomDiningCategoryRepository extends JpaRepository<InRoomDiningCategory, Integer> {

	public InRoomDiningCategory findById(int id);
	
	@Query(value = "SELECT * FROM `in_room_dining_category` WHERE `deleted` IS NULL", nativeQuery=true)
	List<InRoomDiningCategory> findByNotDeleted();
	@Query(value = "SELECT * FROM `in_room_dining_category` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<InRoomDiningCategory> findByDeleted();
	
}