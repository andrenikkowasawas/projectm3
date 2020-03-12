package com.bluewater.projectm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.bluewater.projectm.entity.InRoomDiningMenu;

@Repository("inRoomDiningMenuRepository")
public interface InRoomDiningMenuRepository extends JpaRepository<InRoomDiningMenu, Integer> {

}
