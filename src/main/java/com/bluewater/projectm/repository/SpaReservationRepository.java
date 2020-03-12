package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.SpaReservation;

@Repository("spaReservationRepository")
public interface SpaReservationRepository extends JpaRepository<SpaReservation, Integer> {

	@Query( value = "SELECT * FROM `spa_reservation` ORDER BY spa_reservation_date ASC LIMIT 20" , nativeQuery = true)
    Iterable<SpaReservation> getAllSpaReservation(); 
}
