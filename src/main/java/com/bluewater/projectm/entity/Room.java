package com.bluewater.projectm.entity;


import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "room", schema = "tsc", catalog = "")
public class Room {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	

	private String roomNo;
	
	@OneToMany(mappedBy = "room")
	  private List<Guest> guest;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Basic
	@Column(name = "deleted", nullable = true, length = 25)
	private String deleted;
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted() {
		this.deleted = "deleted";
	}
	
	public void recover() {
		this.deleted = null;
	}

	@Basic
	@Column(name = "roomNo", nullable = false, length = 5)
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	
	
	@Basic
	@Column(name = "occupyingGuest", nullable=true)
	public int occupyingGuest;
	
	
	
	public int getOccupyingGuest() {
		return occupyingGuest;
	}
	public void setOccupyingGuest(int occupyingGuest) {
		this.occupyingGuest = occupyingGuest;
	}
	
	
	@Override
	public String toString() {
		return "Room [id=" + id + ", roomNo=" + roomNo + ", guest=" + guest + "]";
	}
	
}