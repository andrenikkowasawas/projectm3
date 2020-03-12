package com.bluewater.projectm.entity;

import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "guest", schema = "tsc", catalog = "")
public class Guest {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String guestFirstname;
	private String guestLastname;
	private String guestPhoneNum;
	private String guestEmailAddress;
	private String guestNationality;
	private String guestGender;
	private String guestAge;
	
	@ManyToOne(fetch=FetchType.LAZY)
	  @JoinColumn(name="room")
	  private Room room;
	
	

	@OneToMany(mappedBy = "guest")
    Set<DiningReservation> diningReservations;
	
	@OneToMany(mappedBy = "guest")
    Set<Reservation> reservation;
	
	@OneToMany(mappedBy = "guest")
    Set<InRoomOrder> inRoomOrder;
	
	
	
	
	public Set<DiningReservation> getDiningReservations() {
		return diningReservations;
	}
	public void setDiningReservations(Set<DiningReservation> diningReservations) {
		this.diningReservations = diningReservations;
	}
	public Set<Reservation> getReservation() {
		return reservation;
	}
	public void setReservation(Set<Reservation> reservation) {
		this.reservation = reservation;
	}

	
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Basic
	@Column(name = "guestFirstname", nullable = false, length = 25)
	public String getGuestFirstname() {
		return guestFirstname;
	}
	public void setGuestFirstname(String guestFirstname) {
		this.guestFirstname = guestFirstname;
	}
	
	@Basic
	@Column(name = "guestLastname", nullable = false, length = 25)
	public String getGuestLastname() {
		return guestLastname;
	}
	public void setGuestLastname(String guestLastname) {
		this.guestLastname = guestLastname;
	}
	
	
	//
	//ADDITION CODE BY CHARLES MWahahaha
	//
	
	
	@Basic
	@Column(name = "guestPhoneNum", nullable = false, length = 25)
	public String getGuestPhoneNum() {
		return guestPhoneNum;
	}
	public void setGuestPhoneNum(String guestPhoneNum) {
		this.guestPhoneNum = guestPhoneNum;
	}
	
	@Basic
	@Column(name = "guestEmailAddress", nullable = false, length = 25)
	public String getGuestEmailAddress() {
		return guestEmailAddress;
	}
	public void setGuestEmailAddress(String guestEmailAddress) {
		this.guestEmailAddress = guestEmailAddress;
	}
	
	@Basic
	@Column(name = "guestNationality", nullable = false, length = 25)
	public String getGuestNationality() {
		return guestNationality;
	}
	public void setGuestNationality(String guestNationality) {
		this.guestNationality = guestNationality;
	}
	
	@Basic
	@Column(name = "guestGender", nullable = false, length = 25)
	public String getGuestGender() {
		return guestGender;
	}
	public void setGuestGender(String guestGender) {
		this.guestGender = guestGender;
	}
	
	@Basic
	@Column(name = "guestAge", nullable = false, length = 25)
	public String getGuestAge() {
		return guestAge;
	}
	public void setGuestAge(String guestAge) {
		this.guestAge = guestAge;
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
	
	
	@Override
	public String toString() {
		return "Guest [id=" + id + ", guestFirstname=" + guestFirstname + ", guestLastname=" + guestLastname + ", room="
				+ room + "]";
	}
	
}