package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.Reservation;

@Repository ("reservationRepository")
public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
	
	 
	
}
