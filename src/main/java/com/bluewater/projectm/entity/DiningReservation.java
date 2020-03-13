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
@Table(name = "diningReservation", schema = "tsc", catalog = "")
public class DiningReservation {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
    @JoinColumn(name = "guestId" , referencedColumnName = "id")
    private Guest guest;
	
	
	@ManyToOne
    @JoinColumn(name = "diningId" , referencedColumnName = "id")
   private Dining dining;
	
	private Date diningReservationDate;
	private String diningReservationTimeRange;
	private int diningReservationGoodFor;
	private String status;

	


	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Basic
	@Temporal(TemporalType.DATE)
	@Column(name = "diningReservationDate", nullable = false)
	public Date getDiningReservationDate() {
		return diningReservationDate;
	}
	public void setDiningReservationDate(Date diningReservationDate) {
		this.diningReservationDate = diningReservationDate;
	}
	

	@Basic
	@Column(name = "diningReservationTimeRange", nullable = false, length = 25)
	public String getDiningReservationTimeRange() {
		return diningReservationTimeRange;
	}
	public void setDiningReservationTimeRange(String diningReservationTimeRange) {
		this.diningReservationTimeRange = diningReservationTimeRange;
	}
	
	@Basic
	@Column(name = "diningReservationGoodFor", nullable = false, length = 5)
	public int getDiningReservationGoodFor() {
		return diningReservationGoodFor;
	}
	public void setDiningReservationGoodFor(int diningReservationGoodFor) {
		this.diningReservationGoodFor = diningReservationGoodFor;
	}
	
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	public Dining getDining() {
		return dining;
	}
	public void setDining(Dining dining) {
		this.dining = dining;
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
		return "DiningReservation [id=" + id + ", guest=" + guest + ", dining=" + dining + ", diningReservationDate="
				+ diningReservationDate + ", diningReservationTimeRange=" + diningReservationTimeRange
				+ ", diningReservationGoodFor=" + diningReservationGoodFor + "]";
	}
	
}