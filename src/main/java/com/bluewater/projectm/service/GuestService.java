package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Guest;

@Service("guestService")
public interface GuestService {
	Optional < Guest > findGuestById(Integer id);
}
