  
package com.bluewater.projectm.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.Room;

@Repository ("roomRepository")
public interface RoomRepository extends JpaRepository<Room, Integer> {

	public Room findById(int roomId);

	
	@Query(value = "SELECT * FROM `room` WHERE `deleted` IS NULL", nativeQuery=true)
	List<Room> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `room` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<Room> findByDeleted();
}