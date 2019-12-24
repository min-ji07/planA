package com.kh.planA.review.model.service;

import java.util.ArrayList;

import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.review.model.vo.ReviewComment;

public interface ReviewService {

	int getListCount();

	ArrayList<Review> selectList(PageInfo pi);

	int getTaiwanCount();

	int getVietnamCount();

	int getJapanCount();

	int getChinaCount();

	int getPhilCount();

	int getThailandCount();

	ArrayList<Review> selectCList(PageInfo pi, String country);

	int reviewInsert(String userId, String rTag, String country, String rTitle, String rContent, String originName, String changeName);

	ArrayList<Review> recentReview();

	Review reviewDetail(int rId);

	ArrayList<ReviewComment> getComment(int rId);

	int commentInsert(ReviewComment rc);

	int reviewCount(int rId, int rView);

	int getTagCount(String rTag);

	ArrayList<Review> selectTagList(PageInfo pi, String rTag);

	int getKeywordCount(String keyword);

	ArrayList<Review> selectKeywordList(PageInfo pi, String keyword);

	int reviewLock(int rLock, int rId);

   // myPage 여행 후기 작성글 불러오기
   ArrayList<Review> myReviewList(String userId);

   // 디테일 저장시 사진 가져오기  
   String detailPicture(String userId);
   
	Review showReviewUpdate(int rId);

	int reviewUpdate(Review r);
	
	ArrayList<Review> popularReview();

	Review reviewMyDetail(int rId);

}