package com.bluewater.projectm.entity;

import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "dining", schema = "tsc", catalog = "")
public class Dining {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String diningName;
	
	
	@org.hibernate.annotations.Type( type= "text")
	private String diningDescription;
	
	
	@OneToMany(mappedBy = "dining")
    Set<DiningReservation> diningReservations;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Basic
	@Column(name = "diningName", nullable = false, length = 25)
	public String getDiningName() {
		return diningName;
	}
	public void setDiningName(String diningName) {
		this.diningName = diningName;
	}
	
	public String getDiningDescription() {
		return diningDescription;
	}
	public void setDiningDescription(String diningDescription) {
		this.diningDescription = diningDescription;
	}
	@Basic
	@Column(name = "imgFilePath", nullable = false, length = 100)
	private String imgFilePath;
	public String getImgFilePath() {
		return imgFilePath;
	}
	public void setImgFilePath(String imgFilePath) {
		this.imgFilePath = imgFilePath;
	}
	
	
	public Set<DiningReservation> getDiningReservations() {
		return diningReservations;
	}
	public void setDiningReservations(Set<DiningReservation> diningReservations) {
		this.diningReservations = diningReservations;
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
		return "Dining [id=" + id + ", diningName=" + diningName + ", diningDescription=" + diningDescription +"imagePath="+imgFilePath+"]";
	}
	
	
}