package com.kh.planA.review.model.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Review {

   private int rId;            // 리뷰 번호
   private String userId;         // 작성자 id
   private String nickname;      // 작성자 닉네임
   private Date rDate;            // 작성일
   private String rTag;         // 태그
   private String country;         // 나라
   private String rTitle;         // 제목
   private String rContent;      // 내용
   private String photoOrigin;      // 원본이름
   private String photoChange;      // 바꾼이름
   private int rLock;            // 게시물 잠금 여부
   private int rView;            // 조회수
   
   
   public Review() {
   }


   public Review(int rId, String userId, String nickname, Date rDate, String rTag, String country, String rTitle,
         String rContent, String photoOrigin, String photoChange, int rLock, int rView) {
      super();
      this.rId = rId;
      this.userId = userId;
      this.nickname = nickname;
      this.rDate = rDate;
      this.rTag = rTag;
      this.country = country;
      this.rTitle = rTitle;
      this.rContent = rContent;
      this.photoOrigin = photoOrigin;
      this.photoChange = photoChange;
      this.rLock = rLock;
      this.rView = rView;
   }

   public int getrId() {
      return rId;
   }

   public void setrId(int rId) {
      this.rId = rId;
   }


   public String getUserId() {
      return userId;
   }


   public void setUserId(String userId) {
      this.userId = userId;
   }


   public String getNickname() {
      return nickname;
   }


   public void setNickname(String nickname) {
      this.nickname = nickname;
   }


   public Date getrDate() {
      return rDate;
   }


   public void setrDate(Date rDate) {
      this.rDate = rDate;
   }


   public String getrTag() {
      return rTag;
   }


   public void setrTag(String rTag) {
      this.rTag = rTag;
   }


   public String getCountry() {
      return country;
   }


   public void setCountry(String country) {
      this.country = country;
   }


   public String getrTitle() {
      return rTitle;
   }


   public void setrTitle(String rTitle) {
      this.rTitle = rTitle;
   }


   public String getrContent() {
      return rContent;
   }


   public void setrContent(String rContent) {
      this.rContent = rContent;
   }


   public String getPhotoOrigin() {
      return photoOrigin;
   }


   public void setPhotoOrigin(String photoOrigin) {
      this.photoOrigin = photoOrigin;
   }


   public String getPhotoChange() {
      return photoChange;
   }


   public void setPhotoChange(String photoChange) {
      this.photoChange = photoChange;
   }


   public int getrLock() {
      return rLock;
   }


   public void setrLock(int rLock) {
      this.rLock = rLock;
   }


   public int getrView() {
      return rView;
   }


   public void setrView(int rView) {
      this.rView = rView;
   }


   @Override
   public String toString() {
      return "Review [rId=" + rId + ", userId=" + userId + ", nickname=" + nickname + ", rDate=" + rDate + ", rTag="
            + rTag + ", country=" + country + ", rTitle=" + rTitle + ", rContent=" + rContent + ", photoOrigin="
            + photoOrigin + ", photoChange=" + photoChange + ", rLock=" + rLock + ", rView=" + rView + "]";
   }

   
}