package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.bluewater.projectm.entity.Room;
import com.bluewater.projectm.repository.RoomRepository;

public class RoomServiceImpl implements RoomService {
	@Autowired
	private RoomRepository roomRepository;
	
	@Override
    public Optional < Room > findRoomById(Integer roomId) {
        return roomRepository.findById(roomId);
    }
}
