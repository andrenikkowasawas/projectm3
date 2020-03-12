package com.bluewater.projectm.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "services", schema = "tsc", catalog = "")
public class Services {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String serviceName;
	private String servicePrice;
	private String serviceDuration;
	private String imgFilePath;
	

	@org.hibernate.annotations.Type( type= "text")
	private String serviceDescription;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getServiceName() {
		return serviceName;
	}


	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}


	public String getServicePrice() {
		return servicePrice;
	}


	public void setServicePrice(String servicePrice) {
		this.servicePrice = servicePrice;
	}


	public String getServiceDuration() {
		return serviceDuration;
	}


	public void setServiceDuration(String serviceDuration) {
		this.serviceDuration = serviceDuration;
	}


	public String getImgFilePath() {
		return imgFilePath;
	}


	public void setImgFilePath(String imgFilePath) {
		this.imgFilePath = imgFilePath;
	}


	public String getServiceDescription() {
		return serviceDescription;
	}


	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
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
		return "Services [id=" + id + ", serviceName=" + serviceName + ", servicePrice=" + servicePrice
				+ ", serviceDuration=" + serviceDuration + ", imgFilePath=" + imgFilePath + ", serviceDescription="
				+ serviceDescription + "]";
	}


	


}