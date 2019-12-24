package com.kh.planA.myRoute.model.vo;

public class AirportCode {
	
	private String airline;  //항공사
	private String estimatedDateTime; //변경시간(더착예정시간)
	private String airport; // 도착지 공항 (ex.두바이)
	private String airportcode; // 공항코드
	private String flyTime; // 이륙시간
	public AirportCode() {
		
	}
	public AirportCode(String airline, String estimatedDateTime, String airport, String airportcode, String flyTime) {
		super();
		this.airline = airline;
		this.estimatedDateTime = estimatedDateTime;
		this.airport = airport;
		this.airportcode = airportcode;
		this.flyTime = flyTime;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getEstimatedDateTime() {
		return estimatedDateTime;
	}
	public void setEstimatedDateTime(String estimatedDateTime) {
		this.estimatedDateTime = estimatedDateTime;
	}
	public String getAirport() {
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	public String getAirportcode() {
		return airportcode;
	}
	public void setAirportcode(String airportcode) {
		this.airportcode = airportcode;
	}
	public String getFlyTime() {
		return flyTime;
	}
	public void setFlyTime(String flyTime) {
		this.flyTime = flyTime;
	}
	@Override
	public String toString() {
		return "AirportCode2 [airline=" + airline + ", estimatedDateTime=" + estimatedDateTime + ", airport=" + airport
				+ ", airportcode=" + airportcode + ", flyTime=" + flyTime + "]";
	}
	
	
	
}
