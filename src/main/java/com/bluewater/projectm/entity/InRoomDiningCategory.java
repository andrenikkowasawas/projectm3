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

@Entity
@Table(name = "inRoomDiningCategory", schema = "tsc", catalog = "")
public class InRoomDiningCategory {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String menuCategory;

	 @OneToMany(mappedBy="inRoomDiningCategory" , cascade = CascadeType.ALL)
		private Set<InRoomDiningMenu> inRoomDiningMenu;
		 
	
	public Set<InRoomDiningMenu> getInRoomDiningMenu() {
		return inRoomDiningMenu;
	}
	public void setInRoomDiningMenu(Set<InRoomDiningMenu> inRoomDiningMenu) {
		this.inRoomDiningMenu = inRoomDiningMenu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Basic
	@Column(name = "menuCategory", nullable = false, length = 25)
	public String getMenuCategory() {
		return menuCategory;
	}
	public void setMenuCategory(String menuCategory) {
		this.menuCategory = menuCategory;
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
		return "InRoomDiningCategory [id=" + id + ", menuCategory=" + menuCategory + "]";
	}
}

