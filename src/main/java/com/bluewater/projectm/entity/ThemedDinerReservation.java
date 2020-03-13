package com.bluewater.projectm.entity;


import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "themedDinerReservation", schema = "tsc", catalog = "")
public class ThemedDinerReservation {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Date themedDinerReservationDate;
	private String themedDinerArrivalTime;
	private String themedDinerGuests;
	private String status;
	
	
	@ManyToOne
    @JoinColumn(name = "guestId" , referencedColumnName = "id")
    private Guest guest;
	
	@ManyToOne
    @JoinColumn(name = "themedDinerReservationId" , referencedColumnName = "id")
   private ThemedDiner themedDiner;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getThemedDinerReservationDate() {
		return themedDinerReservationDate;
	}
	public void setThemedDinerReservationDate(Date themedDinerReservationDate) {
		this.themedDinerReservationDate = themedDinerReservationDate;
	}
	public String getThemedDinerArrivalTime() {
		return themedDinerArrivalTime;
	}
	public void setThemedDinerArrivalTime(String themedDinerArrivalTime) {
		this.themedDinerArrivalTime = themedDinerArrivalTime;
	}
	public String getThemedDinerGuests() {
		return themedDinerGuests;
	}
	public void setThemedDinerGuests(String themedDinerGuests) {
		this.themedDinerGuests = themedDinerGuests;
	}
	

	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	public ThemedDiner getThemedDiner() {
		return themedDiner;
	}
	public void setThemedDiner(ThemedDiner themedDiner) {
		this.themedDiner = themedDiner;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	
	@Override
	public String toString() {
		return "ThemedDinerReservation [id=" + id + ", themedDinerReservationDate=" + themedDinerReservationDate
				+ ", themedDinerArrivalTime=" + themedDinerArrivalTime + ", themedDinerGuests=" + themedDinerGuests
				+ ", guest=" + guest + ", themedDiner=" + themedDiner + "]";
	}
	

}