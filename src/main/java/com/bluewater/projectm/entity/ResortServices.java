package com.bluewater.projectm.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "resortServices", schema = "tsc", catalog = "")
public class ResortServices {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String resortServiceName;
	private String resortServiceContact;
	
	@org.hibernate.annotations.Type( type= "text")
	private String resortServiceDescription;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResortServiceName() {
		return resortServiceName;
	}

	public void setResortServiceName(String resortServiceName) {
		this.resortServiceName = resortServiceName;
	}

	public String getResortServiceContact() {
		return resortServiceContact;
	}

	public void setResortServiceContact(String resortServiceContact) {
		this.resortServiceContact = resortServiceContact;
	}

	public String getResortServiceDescription() {
		return resortServiceDescription;
	}

	public void setResortServiceDescription(String resortServiceDescription) {
		this.resortServiceDescription = resortServiceDescription;
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
		return "ResortServices [id=" + id + ", resortServiceName=" + resortServiceName + ", resortServiceContact="
				+ resortServiceContact + ", resortServiceDescription=" + resortServiceDescription + "]";
	}

	
	
}