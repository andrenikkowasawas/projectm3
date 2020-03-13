package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.InRoomDiningMenu;

@Repository("inRoomDiningMenuRepository")
public interface InRoomDiningMenuRepository extends JpaRepository<InRoomDiningMenu, Integer> {
	@Query(value = "SELECT * FROM `in_room_dining_menu` WHERE `deleted` IS NULL", nativeQuery=true)
	List<InRoomDiningMenu> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `in_room_dining_menu` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<InRoomDiningMenu> findByDeleted();
	
	public InRoomDiningMenu findById(int id);

}
