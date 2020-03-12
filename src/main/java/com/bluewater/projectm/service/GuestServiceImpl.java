package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Guest;
import com.bluewater.projectm.repository.GuestRepository;


@Service("guestServiceImpl")
public class GuestServiceImpl implements GuestService {

	
	@Autowired
	private GuestRepository guestRepository;
	
	@Override
    public Optional < Guest > findGuestById(Integer guestId) {
        return guestRepository.findById(guestId);
    }
}
