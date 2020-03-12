package com.bluewater.projectm.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bluewater.projectm.entity.Room;

@Service("roomService")

public interface RoomService {
	Optional < Room > findRoomById(Integer id);
}
