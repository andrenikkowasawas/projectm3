package com.bluewater.projectm.entity;

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
@Table(name = "inRoomOrder", schema = "tsc", catalog = "")
public class InRoomOrder {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	
	@Column(name="noOfOrders", nullable=false)
	private int noOfOrders;
	

	public int getNoOfOrders() {
		return noOfOrders;
	}

	public void setNoOfOrders(int noOfOrders) {
		this.noOfOrders = noOfOrders;
	}
	
	@Column(name="totalAmount", nullable=false)
	private int totalAmount;
	

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Column(name="status", nullable=false)
	public String status;
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	@ManyToOne
    @JoinColumn(name = "guestId" , referencedColumnName = "id")
    private Guest guest;
	public Guest getGuest() {
		return guest;
	}
	public void setGuest(Guest guest) {
		this.guest = guest;
	}
	@ManyToOne
    @JoinColumn(name = "inRoomMenuId" , referencedColumnName = "id")
    private InRoomDiningMenu inRoomDiningMenu;


	public InRoomDiningMenu getInRoomDiningMenu() {
		return inRoomDiningMenu;
	}

	public void setInRoomDiningMenu(InRoomDiningMenu inRoomDiningMenu) {
		this.inRoomDiningMenu = inRoomDiningMenu;
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
	
	
}