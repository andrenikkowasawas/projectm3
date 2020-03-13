package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.ThemedDiner;
import com.bluewater.projectm.entity.ThemedDinerReservation;

@Repository ("themedDinerReservationRepository")
public interface ThemedDinerReservationRepository  extends JpaRepository<ThemedDinerReservation, Integer> {

	public ThemedDinerReservation findById(int id);
	
	@Query( value = "SELECT * FROM `themed_diner_reservation` WHERE  DATE(themed_diner_reservation_date) = CURDATE() - 1", nativeQuery = true)
    Iterable<ThemedDinerReservation> getAllCurrentThemedDinerReservation();
	
	 
	@Query( value = "SELECT * FROM `themed_diner_reservation` ORDER BY themed_diner_reservation_date", nativeQuery = true)
    Iterable<ThemedDinerReservation> getAllThemedDinerReservation(); 
	
	@Query(value = "SELECT * FROM `themed_diner_reservation` WHERE `deleted` IS NULL ORDER BY themed_diner_reservation_date", nativeQuery=true)
	List<ThemedDinerReservation> findByNotDeleted();
	
	@Query(value = "SELECT * FROM `themed_diner_reservation` WHERE `deleted` IS NOT NULL", nativeQuery=true)
	List<ThemedDinerReservation> findByDeleted();
}