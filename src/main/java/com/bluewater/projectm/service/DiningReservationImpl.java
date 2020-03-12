package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.bluewater.projectm.entity.DiningReservation;
import com.bluewater.projectm.repository.DiningReservationRepository;

public class DiningReservationImpl implements DiningReservationService {

	@Autowired
	private DiningReservationRepository diningReservationRepository;
	
	@Override
    public Optional < DiningReservation > findDiningReservationById(Integer diningReservationId) {
       return diningReservationRepository.findById(diningReservationId);
		//return diningReservationRepository.f
    }
}
