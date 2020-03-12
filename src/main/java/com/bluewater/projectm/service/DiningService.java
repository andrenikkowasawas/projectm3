package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Dining;

@Service("diningService")
public interface DiningService {
	Optional < Dining > findDiningById(Integer id);

}
