package com.bluewater.projectm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bluewater.projectm.entity.Feedback;

@Repository ("feedbackRepository")
public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

	
	@Query(value = "SELECT COUNT(rating) FROM feedback f WHERE f.rating = 'excellent'", nativeQuery = true)
	public int countExcellent();
	
	@Query(value = "SELECT COUNT(rating) FROM feedback f WHERE f.rating = 'good'", nativeQuery = true)
	public int countGood();
	
	@Query(value = "SELECT COUNT(rating) FROM feedback f WHERE f.rating = 'average'", nativeQuery = true)
	public int countAverage();
	
	@Query(value = "SELECT COUNT(rating) FROM feedback f WHERE f.rating = 'poor'", nativeQuery = true)
	public int countPoor();
	
	@Query(value = "SELECT COUNT(rating) FROM feedback f WHERE f.rating = 'very poor'", nativeQuery = true)
	public int countVeryPoor();
	
	@Query(value = "SELECT * FROM `feedback` WHERE `deleted` IS NULL", nativeQuery=true)
	List<Feedback> findByNotDeleted();
}