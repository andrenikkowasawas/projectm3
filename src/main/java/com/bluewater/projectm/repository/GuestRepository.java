package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.Guest;

@Repository ("guestRepository")
public interface GuestRepository extends JpaRepository<Guest, Integer>{
	
	public int countByGuestGender(String gender);
	
	public int countByGuestNationality(String nationality);
	
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age < 20", nativeQuery = true)
	public int countByGuestAgeTwentyBelow();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 20 AND g.guest_age <= 25", nativeQuery = true)
	public int countByGuestAgeTwentytoTwentyFive();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 26 AND g.guest_age <= 30", nativeQuery = true)
	public int countByGuestAgeTwentySixToThirty();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 31 AND g.guest_age <= 35", nativeQuery = true)
	public int countByGuestAgeThirtyOneToThirtyFive();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 36 AND g.guest_age <= 40", nativeQuery = true)
	public int countByGuestAgeThirtySixToForty();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 41 AND g.guest_age <= 45", nativeQuery = true)
	public int countByGuestAgeFortyOneToFortyFive();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 46 AND g.guest_age <= 50", nativeQuery = true)
	public int counByGuestAgeFortySixToFifty();
	@Query(value = "SELECT COUNT(guest_age) FROM Guest g WHERE g.guest_age >= 51", nativeQuery = true)
	public int countByGuestAgeFiftyAbove();
	
	
	
}
