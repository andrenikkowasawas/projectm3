package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Dining;
import com.bluewater.projectm.repository.DiningRepository;

@Service("diningServiceImpl")
public class DiningServiceImpl implements DiningService {
	@Autowired
	private DiningRepository diningRepository;
	
	
	@Override
    public Optional < Dining > findDiningById(Integer diningId) {
        return diningRepository.findById(diningId);
    }
}
