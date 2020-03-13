package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.Services;
import com.bluewater.projectm.entity.SpaReservation;

@Repository("spaReservationRepository")
public interface SpaReservationRepository extends JpaRepository<SpaReservation, Integer> {
	
	
	public SpaReservation findById(int id);
	
	@Query( value = "SELECT * FROM `spa_reservation` ORDER BY spa_reservation_date ASC LIMIT 20" , nativeQuery = true)
    Iterable<SpaReservation> getAllSpaReservation(); 
	
	@Query(value = "SELECT * FROM `spa_reservation` WHERE `deleted` IS NULL", nativeQuery=true)
	List<SpaReservation> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `spa_reservation` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<SpaReservation> findByDeleted();
}
