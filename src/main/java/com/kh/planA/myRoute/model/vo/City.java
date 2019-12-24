package com.kh.planA.myRoute.model.vo;

import java.io.Serializable;

public class City implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1993281051976682503L;
	
	//도시 필드
	private String city;
	private String cityNum;
	private String country;
	private String sukso1;
	private String sukso1_picture1;
	private String sukso1_picture2;
	private String sukso1_picture3;
	private String sukso1_picture4;
	private String sukso1_picture5;
	private String sukso1_wifi;
	private String sukso1_bf;
	private String sukso1_refund;
	private String sukso1_safe;
	private String sukso1_pool;
	private String sukso2;
	private String sukso2_picture1;
	private String sukso2_picture2;
	private String sukso2_picture3;
	private String sukso2_picture4;
	private String sukso2_picture5;
	private String sukso2_wifi;
	private String sukso2_bf;
	private String sukso2_refund;
	private String sukso2_safe;
	private String sukso2_pool;
	private String sukso3;
	private String sukso3_picture1;
	private String sukso3_picture2;
	private String sukso3_picture3;
	private String sukso3_picture4;
	private String sukso3_picture5;
	private String sukso3_wifi;
	private String sukso3_bf;
	private String sukso3_refund;
	private String sukso3_safe;
	private String sukso3_pool;
	private String activity1;
	private String activity1_picture;
	private String activity1_info;
	private String activity2;
	private String activity2_picture;
	private String activity2_info;
	private String activity3;
	private String activity3_picture;
	private String activity3_info;
	private String tour1;
	private String tour1_picture;
	private String tour1_info;
	private String tour2;
	private String tour2_picture;
	private String tour2_info;
	private String tour3;
	private String tour3_picture;
	private String tour3_info;
	
	
	public City() {
		
	}


	public City(String city, String cityNum, String country) {
		super();
		this.city = city;
		this.cityNum = cityNum;
		this.country = country;
	}
	
	


	public City(String city, String cityNum, String country, String sukso1, String sukso1_picture1,
			String sukso1_picture2, String sukso1_picture3, String sukso1_picture4, String sukso1_picture5,
			String sukso1_wifi, String sukso1_bf, String sukso1_refund, String sukso1_safe, String sukso1_pool,
			String sukso2, String sukso2_picture1, String sukso2_picture2, String sukso2_picture3,
			String sukso2_picture4, String sukso2_picture5, String sukso2_wifi, String sukso2_bf, String sukso2_refund,
			String sukso2_safe, String sukso2_pool, String sukso3, String sukso3_picture1, String sukso3_picture2,
			String sukso3_picture3, String sukso3_picture4, String sukso3_picture5, String sukso3_wifi,
			String sukso3_bf, String sukso3_refund, String sukso3_safe, String sukso3_pool, String activity1,
			String activity1_picture, String activity1_info, String activity2, String activity2_picture,
			String activity2_info, String activity3, String activity3_picture, String activity3_info, String tour1,
			String tour1_picture, String tour1_info, String tour2, String tour2_picture, String tour2_info,
			String tour3, String tour3_picture, String tour3_info) {
		super();
		this.city = city;
		this.cityNum = cityNum;
		this.country = country;
		this.sukso1 = sukso1;
		this.sukso1_picture1 = sukso1_picture1;
		this.sukso1_picture2 = sukso1_picture2;
		this.sukso1_picture3 = sukso1_picture3;
		this.sukso1_picture4 = sukso1_picture4;
		this.sukso1_picture5 = sukso1_picture5;
		this.sukso1_wifi = sukso1_wifi;
		this.sukso1_bf = sukso1_bf;
		this.sukso1_refund = sukso1_refund;
		this.sukso1_safe = sukso1_safe;
		this.sukso1_pool = sukso1_pool;
		this.sukso2 = sukso2;
		this.sukso2_picture1 = sukso2_picture1;
		this.sukso2_picture2 = sukso2_picture2;
		this.sukso2_picture3 = sukso2_picture3;
		this.sukso2_picture4 = sukso2_picture4;
		this.sukso2_picture5 = sukso2_picture5;
		this.sukso2_wifi = sukso2_wifi;
		this.sukso2_bf = sukso2_bf;
		this.sukso2_refund = sukso2_refund;
		this.sukso2_safe = sukso2_safe;
		this.sukso2_pool = sukso2_pool;
		this.sukso3 = sukso3;
		this.sukso3_picture1 = sukso3_picture1;
		this.sukso3_picture2 = sukso3_picture2;
		this.sukso3_picture3 = sukso3_picture3;
		this.sukso3_picture4 = sukso3_picture4;
		this.sukso3_picture5 = sukso3_picture5;
		this.sukso3_wifi = sukso3_wifi;
		this.sukso3_bf = sukso3_bf;
		this.sukso3_refund = sukso3_refund;
		this.sukso3_safe = sukso3_safe;
		this.sukso3_pool = sukso3_pool;
		this.activity1 = activity1;
		this.activity1_picture = activity1_picture;
		this.activity1_info = activity1_info;
		this.activity2 = activity2;
		this.activity2_picture = activity2_picture;
		this.activity2_info = activity2_info;
		this.activity3 = activity3;
		this.activity3_picture = activity3_picture;
		this.activity3_info = activity3_info;
		this.tour1 = tour1;
		this.tour1_picture = tour1_picture;
		this.tour1_info = tour1_info;
		this.tour2 = tour2;
		this.tour2_picture = tour2_picture;
		this.tour2_info = tour2_info;
		this.tour3 = tour3;
		this.tour3_picture = tour3_picture;
		this.tour3_info = tour3_info;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getCityNum() {
		return cityNum;
	}


	public void setCityNum(String cityNum) {
		this.cityNum = cityNum;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getSukso1() {
		return sukso1;
	}


	public void setSukso1(String sukso1) {
		this.sukso1 = sukso1;
	}


	public String getSukso1_picture1() {
		return sukso1_picture1;
	}


	public void setSukso1_picture1(String sukso1_picture1) {
		this.sukso1_picture1 = sukso1_picture1;
	}


	public String getSukso1_picture2() {
		return sukso1_picture2;
	}


	public void setSukso1_picture2(String sukso1_picture2) {
		this.sukso1_picture2 = sukso1_picture2;
	}


	public String getSukso1_picture3() {
		return sukso1_picture3;
	}


	public void setSukso1_picture3(String sukso1_picture3) {
		this.sukso1_picture3 = sukso1_picture3;
	}


	public String getSukso1_picture4() {
		return sukso1_picture4;
	}


	public void setSukso1_picture4(String sukso1_picture4) {
		this.sukso1_picture4 = sukso1_picture4;
	}


	public String getSukso1_picture5() {
		return sukso1_picture5;
	}


	public void setSukso1_picture5(String sukso1_picture5) {
		this.sukso1_picture5 = sukso1_picture5;
	}


	public String getSukso1_wifi() {
		return sukso1_wifi;
	}


	public void setSukso1_wifi(String sukso1_wifi) {
		this.sukso1_wifi = sukso1_wifi;
	}


	public String getSukso1_bf() {
		return sukso1_bf;
	}


	public void setSukso1_bf(String sukso1_bf) {
		this.sukso1_bf = sukso1_bf;
	}


	public String getSukso1_refund() {
		return sukso1_refund;
	}


	public void setSukso1_refund(String sukso1_refund) {
		this.sukso1_refund = sukso1_refund;
	}


	public String getSukso1_safe() {
		return sukso1_safe;
	}


	public void setSukso1_safe(String sukso1_safe) {
		this.sukso1_safe = sukso1_safe;
	}


	public String getSukso1_pool() {
		return sukso1_pool;
	}


	public void setSukso1_pool(String sukso1_pool) {
		this.sukso1_pool = sukso1_pool;
	}


	public String getSukso2() {
		return sukso2;
	}


	public void setSukso2(String sukso2) {
		this.sukso2 = sukso2;
	}


	public String getSukso2_picture1() {
		return sukso2_picture1;
	}


	public void setSukso2_picture1(String sukso2_picture1) {
		this.sukso2_picture1 = sukso2_picture1;
	}


	public String getSukso2_picture2() {
		return sukso2_picture2;
	}


	public void setSukso2_picture2(String sukso2_picture2) {
		this.sukso2_picture2 = sukso2_picture2;
	}


	public String getSukso2_picture3() {
		return sukso2_picture3;
	}


	public void setSukso2_picture3(String sukso2_picture3) {
		this.sukso2_picture3 = sukso2_picture3;
	}


	public String getSukso2_picture4() {
		return sukso2_picture4;
	}


	public void setSukso2_picture4(String sukso2_picture4) {
		this.sukso2_picture4 = sukso2_picture4;
	}


	public String getSukso2_picture5() {
		return sukso2_picture5;
	}


	public void setSukso2_picture5(String sukso2_picture5) {
		this.sukso2_picture5 = sukso2_picture5;
	}


	public String getSukso2_wifi() {
		return sukso2_wifi;
	}


	public void setSukso2_wifi(String sukso2_wifi) {
		this.sukso2_wifi = sukso2_wifi;
	}


	public String getSukso2_bf() {
		return sukso2_bf;
	}


	public void setSukso2_bf(String sukso2_bf) {
		this.sukso2_bf = sukso2_bf;
	}


	public String getSukso2_refund() {
		return sukso2_refund;
	}


	public void setSukso2_refund(String sukso2_refund) {
		this.sukso2_refund = sukso2_refund;
	}


	public String getSukso2_safe() {
		return sukso2_safe;
	}


	public void setSukso2_safe(String sukso2_safe) {
		this.sukso2_safe = sukso2_safe;
	}


	public String getSukso2_pool() {
		return sukso2_pool;
	}


	public void setSukso2_pool(String sukso2_pool) {
		this.sukso2_pool = sukso2_pool;
	}


	public String getSukso3() {
		return sukso3;
	}


	public void setSukso3(String sukso3) {
		this.sukso3 = sukso3;
	}


	public String getSukso3_picture1() {
		return sukso3_picture1;
	}


	public void setSukso3_picture1(String sukso3_picture1) {
		this.sukso3_picture1 = sukso3_picture1;
	}


	public String getSukso3_picture2() {
		return sukso3_picture2;
	}


	public void setSukso3_picture2(String sukso3_picture2) {
		this.sukso3_picture2 = sukso3_picture2;
	}


	public String getSukso3_picture3() {
		return sukso3_picture3;
	}


	public void setSukso3_picture3(String sukso3_picture3) {
		this.sukso3_picture3 = sukso3_picture3;
	}


	public String getSukso3_picture4() {
		return sukso3_picture4;
	}


	public void setSukso3_picture4(String sukso3_picture4) {
		this.sukso3_picture4 = sukso3_picture4;
	}


	public String getSukso3_picture5() {
		return sukso3_picture5;
	}


	public void setSukso3_picture5(String sukso3_picture5) {
		this.sukso3_picture5 = sukso3_picture5;
	}


	public String getSukso3_wifi() {
		return sukso3_wifi;
	}


	public void setSukso3_wifi(String sukso3_wifi) {
		this.sukso3_wifi = sukso3_wifi;
	}


	public String getSukso3_bf() {
		return sukso3_bf;
	}


	public void setSukso3_bf(String sukso3_bf) {
		this.sukso3_bf = sukso3_bf;
	}


	public String getSukso3_refund() {
		return sukso3_refund;
	}


	public void setSukso3_refund(String sukso3_refund) {
		this.sukso3_refund = sukso3_refund;
	}


	public String getSukso3_safe() {
		return sukso3_safe;
	}


	public void setSukso3_safe(String sukso3_safe) {
		this.sukso3_safe = sukso3_safe;
	}


	public String getSukso3_pool() {
		return sukso3_pool;
	}


	public void setSukso3_pool(String sukso3_pool) {
		this.sukso3_pool = sukso3_pool;
	}


	public String getActivity1() {
		return activity1;
	}


	public void setActivity1(String activity1) {
		this.activity1 = activity1;
	}


	public String getActivity1_picture() {
		return activity1_picture;
	}


	public void setActivity1_picture(String activity1_picture) {
		this.activity1_picture = activity1_picture;
	}


	public String getActivity1_info() {
		return activity1_info;
	}


	public void setActivity1_info(String activity1_info) {
		this.activity1_info = activity1_info;
	}


	public String getActivity2() {
		return activity2;
	}


	public void setActivity2(String activity2) {
		this.activity2 = activity2;
	}


	public String getActivity2_picture() {
		return activity2_picture;
	}


	public void setActivity2_picture(String activity2_picture) {
		this.activity2_picture = activity2_picture;
	}


	public String getActivity2_info() {
		return activity2_info;
	}


	public void setActivity2_info(String activity2_info) {
		this.activity2_info = activity2_info;
	}


	public String getActivity3() {
		return activity3;
	}


	public void setActivity3(String activity3) {
		this.activity3 = activity3;
	}


	public String getActivity3_picture() {
		return activity3_picture;
	}


	public void setActivity3_picture(String activity3_picture) {
		this.activity3_picture = activity3_picture;
	}


	public String getActivity3_info() {
		return activity3_info;
	}


	public void setActivity3_info(String activity3_info) {
		this.activity3_info = activity3_info;
	}


	public String getTour1() {
		return tour1;
	}


	public void setTour1(String tour1) {
		this.tour1 = tour1;
	}


	public String getTour1_picture() {
		return tour1_picture;
	}


	public void setTour1_picture(String tour1_picture) {
		this.tour1_picture = tour1_picture;
	}


	public String getTour1_info() {
		return tour1_info;
	}


	public void setTour1_info(String tour1_info) {
		this.tour1_info = tour1_info;
	}


	public String getTour2() {
		return tour2;
	}


	public void setTour2(String tour2) {
		this.tour2 = tour2;
	}


	public String getTour2_picture() {
		return tour2_picture;
	}


	public void setTour2_picture(String tour2_picture) {
		this.tour2_picture = tour2_picture;
	}


	public String getTour2_info() {
		return tour2_info;
	}


	public void setTour2_info(String tour2_info) {
		this.tour2_info = tour2_info;
	}


	public String getTour3() {
		return tour3;
	}


	public void setTour3(String tour3) {
		this.tour3 = tour3;
	}


	public String getTour3_picture() {
		return tour3_picture;
	}


	public void setTour3_picture(String tour3_picture) {
		this.tour3_picture = tour3_picture;
	}


	public String getTour3_info() {
		return tour3_info;
	}


	public void setTour3_info(String tour3_info) {
		this.tour3_info = tour3_info;
	}


	@Override
	public String toString() {
		return "City [city=" + city + ", cityNum=" + cityNum + ", country=" + country + ", sukso1=" + sukso1
				+ ", sukso1_picture1=" + sukso1_picture1 + ", sukso1_picture2=" + sukso1_picture2 + ", sukso1_picture3="
				+ sukso1_picture3 + ", sukso1_picture4=" + sukso1_picture4 + ", sukso1_picture5=" + sukso1_picture5
				+ ", sukso1_wifi=" + sukso1_wifi + ", sukso1_bf=" + sukso1_bf + ", sukso1_refund=" + sukso1_refund
				+ ", sukso1_safe=" + sukso1_safe + ", sukso1_pool=" + sukso1_pool + ", sukso2=" + sukso2
				+ ", sukso2_picture1=" + sukso2_picture1 + ", sukso2_picture2=" + sukso2_picture2 + ", sukso2_picture3="
				+ sukso2_picture3 + ", sukso2_picture4=" + sukso2_picture4 + ", sukso2_picture5=" + sukso2_picture5
				+ ", sukso2_wifi=" + sukso2_wifi + ", sukso2_bf=" + sukso2_bf + ", sukso2_refund=" + sukso2_refund
				+ ", sukso2_safe=" + sukso2_safe + ", sukso2_pool=" + sukso2_pool + ", sukso3=" + sukso3
				+ ", sukso3_picture1=" + sukso3_picture1 + ", sukso3_picture2=" + sukso3_picture2 + ", sukso3_picture3="
				+ sukso3_picture3 + ", sukso3_picture4=" + sukso3_picture4 + ", sukso3_picture5=" + sukso3_picture5
				+ ", sukso3_wifi=" + sukso3_wifi + ", sukso3_bf=" + sukso3_bf + ", sukso3_refund=" + sukso3_refund
				+ ", sukso3_safe=" + sukso3_safe + ", sukso3_pool=" + sukso3_pool + ", activity1=" + activity1
				+ ", activity1_picture=" + activity1_picture + ", activity1_info=" + activity1_info + ", activity2="
				+ activity2 + ", activity2_picture=" + activity2_picture + ", activity2_info=" + activity2_info
				+ ", activity3=" + activity3 + ", activity3_picture=" + activity3_picture + ", activity3_info="
				+ activity3_info + ", tour1=" + tour1 + ", tour1_picture=" + tour1_picture + ", tour1_info="
				+ tour1_info + ", tour2=" + tour2 + ", tour2_picture=" + tour2_picture + ", tour2_info=" + tour2_info
				+ ", tour3=" + tour3 + ", tour3_picture=" + tour3_picture + ", tour3_info=" + tour3_info + "]";
	}

	
	
}
