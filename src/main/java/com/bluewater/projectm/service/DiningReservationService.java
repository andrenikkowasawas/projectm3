package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.stereotype.Service;
import com.bluewater.projectm.entity.DiningReservation;

@Service("diningRervationService")
public interface DiningReservationService {
	Optional < DiningReservation > findDiningReservationById(Integer id);

}
