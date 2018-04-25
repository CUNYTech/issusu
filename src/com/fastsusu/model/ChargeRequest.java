package com.fastsusu.model;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class ChargeRequest {

	private String currency;
	private Integer groupId;
	private String description;
	private int amount;
	private String stripeEmail;
	private String stripeToken;
	
	private String groupName;
	
	private int groupSize;
	
	private String howOften;
	
	private int duration_weeks;
	
	@Temporal(TemporalType.DATE)
	private Date startDate;
	
	private String pageName;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getStripeEmail() {
		return stripeEmail;
	}

	public void setStripeEmail(String stripeEmail) {
		this.stripeEmail = stripeEmail;
	}

	public String getStripeToken() {
		return stripeToken;
	}

	public void setStripeToken(String stripeToken) {
		this.stripeToken = stripeToken;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public Integer getGroupId() {
		return groupId;
	}

	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
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

	public int getDuration_weeks() {
		return duration_weeks;
	}

	public void setDuration_weeks(int duration_weeks) {
		this.duration_weeks = duration_weeks;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

}
