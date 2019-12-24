package com.kh.planA.review.model.vo;

import java.time.LocalDateTime;

public class ReviewComment {

   private int cId;
   private int refrId;
   private String cContent;
   private String cWriter;
   private String cNickname;
   private LocalDateTime cDate;
   private int refcId;
   private int clevel;
   private String profilePicture;
   public ReviewComment() {
	   super();
   }
public ReviewComment(int cId, int refrId, String cContent, String cWriter, String cNickname, LocalDateTime cDate,
		int refcId, int clevel, String profilePicture) {
	super();
	this.cId = cId;
	this.refrId = refrId;
	this.cContent = cContent;
	this.cWriter = cWriter;
	this.cNickname = cNickname;
	this.cDate = cDate;
	this.refcId = refcId;
	this.clevel = clevel;
	this.profilePicture = profilePicture;
}
public int getcId() {
	return cId;
}
public void setcId(int cId) {
	this.cId = cId;
}
public int getRefrId() {
	return refrId;
}
public void setRefrId(int refrId) {
	this.refrId = refrId;
}
public String getcContent() {
	return cContent;
}
public void setcContent(String cContent) {
	this.cContent = cContent;
}
public String getcWriter() {
	return cWriter;
}
public void setcWriter(String cWriter) {
	this.cWriter = cWriter;
}
public String getcNickname() {
	return cNickname;
}
public void setcNickname(String cNickname) {
	this.cNickname = cNickname;
}
public LocalDateTime getcDate() {
	return cDate;
}
public void setcDate(LocalDateTime cDate) {
	this.cDate = cDate;
}
public int getRefcId() {
	return refcId;
}
public void setRefcId(int refcId) {
	this.refcId = refcId;
}
public int getClevel() {
	return clevel;
}
public void setClevel(int clevel) {
	this.clevel = clevel;
}
public String getProfilePicture() {
	return profilePicture;
}
public void setProfilePicture(String profilePicture) {
	this.profilePicture = profilePicture;
}
@Override
public String toString() {
	return "ReviewComment [cId=" + cId + ", refrId=" + refrId + ", cContent=" + cContent + ", cWriter=" + cWriter
			+ ", cNickname=" + cNickname + ", cDate=" + cDate + ", refcId=" + refcId + ", clevel=" + clevel
			+ ", profilePicture=" + profilePicture + "]";
}
   
   
   
}