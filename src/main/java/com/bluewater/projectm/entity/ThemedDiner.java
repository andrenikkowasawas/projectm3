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
@Table(name = "themedDiner", schema = "tsc", catalog = "")
public class ThemedDiner {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String themedDinerName;
	private String themedDinerAvailability;
	private String rate;
	
	@org.hibernate.annotations.Type( type= "text")
	private String description;
	
	@OneToMany(mappedBy = "themedDiner")
    Set<ThemedDinerReservation> themedDinerReservation;
	
	
	@Basic
	@Column(name = "imgFilePath", nullable = false, length =100)
	private String imgFilePath;
	public String getImgFilePath() {
		return imgFilePath;
	}
	public void setImgFilePath(String imgFilePath) {
		this.imgFilePath = imgFilePath;
	}





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getThemedDinerName() {
		return themedDinerName;
	}

	public void setThemedDinerName(String themedDinerName) {
		this.themedDinerName = themedDinerName;
	}

	public String getThemedDinerAvailability() {
		return themedDinerAvailability;
	}

	public void setThemedDinerAvailability(String themedDinerAvailability) {
		this.themedDinerAvailability = themedDinerAvailability;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	 public Set<ThemedDinerReservation> getThemedDinerReservation() {
			return themedDinerReservation;
		}

		public void setThemedDinerReservation(Set<ThemedDinerReservation> themedDinerReservation) {
			this.themedDinerReservation = themedDinerReservation;
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
		return "ThemedDiner [id=" + id + ", themedDinerName=" + themedDinerName + ", themedDinerAvailability="
				+ themedDinerAvailability + ", rate=" + rate + ", description=" + description + "]";
	}


}