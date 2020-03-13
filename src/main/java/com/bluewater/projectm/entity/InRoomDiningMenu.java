package com.bluewater.projectm.entity;

import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "inRoomDiningMenu", schema = "tsc", catalog = "")
public class InRoomDiningMenu {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String menuName;
	private int menuPrice;

	@org.hibernate.annotations.Type( type= "text")
	private String menuDescription;
	
	 @ManyToOne
	  @JoinColumn(name="menuCategoryId", referencedColumnName = "id", nullable=false)
	  private InRoomDiningCategory inRoomDiningCategory;
	
	public InRoomDiningCategory getInRoomDiningCategory() {
		return inRoomDiningCategory;
	}
	public void setInRoomDiningCategory(InRoomDiningCategory inRoomDiningCategory) {
		this.inRoomDiningCategory = inRoomDiningCategory;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	@OneToMany(mappedBy = "inRoomDiningMenu")
    Set<InRoomOrder> inRoomOrder;
	
	@Basic
	@Column(name = "menuName", nullable = false, length = 25)
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	@Basic
	@Column(name = "menuDescription", nullable = false, length = 500)
	public String getMenuDescription() {
		return menuDescription;
	}
	public void setMenuDescription(String menuDescription) {
		this.menuDescription = menuDescription;
	}
	

	@Basic
	@Column(name = "menuPrice", nullable = false, length = 25)
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
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
		return "InRoomDiningMenu [id=" + id + ", menuName=" + menuName + ", menuDescription=" + menuDescription
				+ ", menuPrice=" + menuPrice + "]";
	}

}