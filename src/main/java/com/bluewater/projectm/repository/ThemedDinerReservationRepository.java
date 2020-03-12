package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.ThemedDinerReservation;

@Repository ("themedDinerReservationRepository")
public interface ThemedDinerReservationRepository  extends JpaRepository<ThemedDinerReservation, Integer> {

	
	@Query( value = "SELECT * FROM `themed_diner_reservation` WHERE  DATE(themed_diner_reservation_date) = CURDATE() - 1", nativeQuery = true)
    Iterable<ThemedDinerReservation> getAllCurrentThemedDinerReservation();
	
	 
	@Query( value = "SELECT * FROM `themed_diner_reservation` ORDER BY themed_diner_reservation_date", nativeQuery = true)
    Iterable<ThemedDinerReservation> getAllThemedDinerReservation(); 
}



