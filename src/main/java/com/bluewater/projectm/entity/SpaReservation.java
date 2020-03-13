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
@Table(name = "spaReservation", schema = "tsc", catalog = "")
public class SpaReservation {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
    @JoinColumn(name = "guestId" , referencedColumnName = "id")
    private Guest guest;
	
	
	@ManyToOne
    @JoinColumn(name = "serviceId" , referencedColumnName = "id")
   private Services services;
	
	
	



	private Date spaReservationDate;
	private String spaReservationTimeRange;
	private int spaReservationGoodFor;


	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}

	
	@Basic
	@Temporal(TemporalType.DATE)
	@Column(name = "spaReservationDate", nullable = false)
	public Date getSpaReservationDate() {
		return spaReservationDate;
	}
	public void setSpaReservationDate(Date spaReservationDate) {
		this.spaReservationDate = spaReservationDate;
	}
	
	@Basic
	@Column(name = "spaReservationTimeRange", nullable = false, length = 25)
	public String getSpaReservationTimeRange() {
		return spaReservationTimeRange;
	}
	public void setSpaReservationTimeRange(String spaReservationTimeRange) {
		this.spaReservationTimeRange = spaReservationTimeRange;
	}
	
	@Basic
	@Column(name = "spaReservationGoodFor", nullable = false, length = 25)
	public int getSpaReservationGoodFor() {
		return spaReservationGoodFor;
	}
	public void setSpaReservationGoodFor(int spaReservationGoodFor) {
		this.spaReservationGoodFor = spaReservationGoodFor;
	}

	public Services getServices() {
		return services;
	}
	public void setServices(Services services) {
		this.services = services;
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
		return "SpaReservation [id=" + id + ", guest=" + guest + ", services=" + services
				+ ", spaReservationDate=" + spaReservationDate + ", spaReservationTimeRange=" + spaReservationTimeRange
				+ ", spaReservationGoodFor=" + spaReservationGoodFor + "]";
	}
	
	
	
}