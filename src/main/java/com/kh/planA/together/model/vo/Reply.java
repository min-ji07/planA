package com.kh.planA.together.model.vo;

import java.sql.Date;

public class Reply {
	
	private int rId;
	private String rContent;
	private int tId;
	private String user_id;
	private Date createDate;
	private Date modifyDate;
	private String status;
	
	public Reply() {
		
	}

	public Reply(int rId, String rContent, int tId, String user_id, Date createDate, Date modifyDate,
			String status) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.tId = tId;
		this.user_id = user_id;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
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


	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", rContent=" + rContent + ", tId=" + tId + ", user_id=" + user_id + ", createDate=" + createDate + ", modifyDate=" + modifyDate + ", status=" + status + "]";
	}
	
	
}

