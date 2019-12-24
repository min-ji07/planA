package com.kh.planA.together.model.vo;

import java.sql.Date;

public class TogetherBoard {

	private int tId;
	private String user_id;
	private String gender;
	private int age;
	private String title;
	private String travel_date;
	private String content;
	private String gender2;
	private String age2;
	private String ing; //진행상태
	private Date write_date; // 작성날짜
	
	public TogetherBoard() {}
	
	public TogetherBoard(int tId, String user_id, String gender, int age, String title, String travel_date, String content,
			String gender2, String age2, String ing, Date write_date) {
		super();
		this.tId = tId;
		this.user_id = user_id;
		this.gender = gender;
		this.age = age;
		this.title = title;
		this.travel_date = travel_date;
		this.content = content;
		this.gender2 = gender2;
		this.age2 = age2;
		this.ing = ing;
		this.write_date = write_date;
	}



	public int gettId() {
		return tId;
	}

	public void settId(int tId) {
		this.tId = tId;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	
	public String getTravel_date() {
		return travel_date;
	}

	public void setTravel_date(String travel_date) {
		this.travel_date = travel_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getGender2() {
		return gender2;
	}

	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}

	public String getAge2() {
		return age2;
	}

	public void setAge2(String age2) {
		this.age2 = age2;
	}
	
	public String getIng() {
		return ing;
	}

	public void setIng(String ing) {
		this.ing = ing;
	}
	
	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	@Override
	public String toString() {
		return "TogetherBoard [tId=" + tId + ", user_id=" + user_id + ", gender=" + gender
				+ ", age=" + age + ", title=" + title +  ", travel_date=" + travel_date +", content=" + content + ", gender2=" + gender2 + ", age2="
				+ age2 + ", ing=" + ing  + ", write_date=" + write_date + "]" +"\n";
	}

	
}
