package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.Events;


@Repository ("eventsRepository")
public interface EventsRepository extends JpaRepository<Events, Integer> {
	public Events findById(int id);
	
	
	@Query(value = "SELECT * FROM `events` WHERE `deleted` IS NULL", nativeQuery=true)
	List<Events> findByNotDeleted();
}