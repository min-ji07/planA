package com.kh.planA.myRoute.model.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.context.annotation.Configuration;
@Configuration
public class RoutePlan implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -923799829629732810L;
	private String country;
	private String city;
	private String startDate;
	private String endDate;
	private int personnel;
	
	public RoutePlan(String country, String city, String startDate, String endDate, int personnel) {
		super();
		this.country = country;
		this.city = city;
		this.startDate = startDate;
		this.endDate = endDate;
		this.personnel = personnel;
	}

	public RoutePlan() {
		super();
	}

	@Override
	public String toString() {
		return "RoutePlan [country=" + country + ", city=" + city + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", personnel=" + personnel + "]";
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	
	
	
	
}
