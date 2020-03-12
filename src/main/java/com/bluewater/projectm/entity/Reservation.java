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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "reservation", schema = "tsc", catalog = "")
public class Reservation {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String type;
	private Date date;
	private String time;
	private String service;
	
	
	@ManyToOne
    @JoinColumn(name = "guestId" , referencedColumnName = "id")
    private Guest guest;
	
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	@Basic
	@Temporal(TemporalType.DATE)
	@Column(name = "date", nullable = false)
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	@Basic
	@Column(name = "time", nullable = false, length = 25)
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	@Basic
	@Column(name = "service", nullable = false, length = 25)
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	
	@Basic
	@Column(name = "type", nullable = false, length = 25)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
		return "Reservation [id=" + id + ", type=" + type + ", date=" + date + ", time=" + time + ", service=" + service
				+ "]";
	}
	
	
}
