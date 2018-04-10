package com.fastsusu.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="groups")
public class Group implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="group_id")
	private int id;
	
	@NotNull
	@Column(name="group_name")
	private String groupName;
	
	@Column(name="group_size")
	private int groupSize;
	
	@Column(name="how_often")
	private String howOften;
	
	@Column(name="payout_amount")
	private double payoutAmount;
	
	@Column(name="group_duration")
	private int duration_weeks;
	
	@Column(name="start_date")
	private Date startDate;
	
	public Group() {};
	 
	public Group(String groupName, int groupSize, String howOften, double d) {
		this.groupName = groupName;
		this.groupSize = groupSize;
		this.howOften = howOften;
		this.payoutAmount = d;
		if (howOften.equals("BiWeekly"))
			this.duration_weeks = this.groupSize *2 ;
		else
			this.duration_weeks = this.groupSize * 4;
	}

	public int getDuration_weeks() {
		return duration_weeks;
	}

	public void setDuration_weeks(int duration_weeks) {
		this.duration_weeks = duration_weeks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public int getGroupSize() {
		return groupSize;
	}

	public void setGroupSize(int groupSize) {
		this.groupSize = groupSize;
	}

	public String getHowOften() {
		return howOften;
	}

	public void setHowOften(String howOften) {
		this.howOften = howOften;
	}

	public double getPayoutAmount() {
		return payoutAmount;
	}

	public void setPayoutAmount(double payoutAmount) {
		this.payoutAmount = payoutAmount;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		if(startDate == null) startDate = new Date();
		this.startDate = startDate;
	}
	
	@Override
	public String toString() {
		return "Group [id=" + id + ", groupName=" + groupName + ", groupSize=" + groupSize + ", howOften=" + howOften
				+ ", payoutAmount=" + payoutAmount + ", startDate="+ startDate + "]";
	}


}

