package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.InRoomOrder;

@Repository("inRoomOrderRepository")
public interface InRoomOrderRepository extends JpaRepository<InRoomOrder, Integer> {

	public InRoomOrder findById(int id);
	
	@Query(value = "SELECT * FROM `in_room_order` WHERE `deleted` IS NULL", nativeQuery=true)
	List<InRoomOrder> findByNotDeleted();
}