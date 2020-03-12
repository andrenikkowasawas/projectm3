package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.entity.Reservation;

@Repository ("diningReservationRepository")
public interface DiningReservationRepository extends JpaRepository<DiningReservation, Integer> {
	 
	@Query( value = "SELECT * FROM `dining_reservation` WHERE  DATE(dining_reservation_date)  = CURDATE() - 1 ", nativeQuery = true)
    Iterable<DiningReservation> getAllCurrentDiningReservation();
	 
	@Query( value = "SELECT * FROM `dining_reservation` ORDER BY dining_reservation_date ASC LIMIT 25", nativeQuery = true)
    Iterable<DiningReservation> getAllDiningReservation(); 
	
}
