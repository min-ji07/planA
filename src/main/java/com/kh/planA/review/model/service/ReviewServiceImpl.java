package com.kh.planA.review.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.review.model.dao.ReviewDao;
import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.review.model.vo.ReviewComment;

@Service("rService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao rDao;
	
	@Override
	public int getListCount() {
		return rDao.getListCount();
	}

	@Override
	public ArrayList<Review> selectList(PageInfo pi) {
		return rDao.selectList(pi);
	}

	@Override
	public int getTaiwanCount() {
		return rDao.getTaiwanCount();
	}

	@Override
	public int getVietnamCount() {
		return rDao.getVietnamCount();
	}

	@Override
	public int getJapanCount() {
		return rDao.getJapanCount();
	}

	@Override
	public int getChinaCount() {
		return rDao.getChinaCount();
	}

	@Override
	public int getPhilCount() {
		return rDao.getPhilCount();
	}

	@Override
	public int getThailandCount() {
		return rDao.getThailandCount();
	}

	@Override
	public ArrayList<Review> selectCList(PageInfo pi, String country) {
		return rDao.selectCList(pi, country);
	}

	@Override
	public int reviewInsert(String userId, String rTag, String country, String rTitle, String rContent, String originName, String changeName) {
		return rDao.reviewInsert(userId,rTag,country,rTitle,rContent,originName,changeName);
	}

	@Override
	public ArrayList<Review> recentReview() {
		return rDao.recentReview();
	}

	@Override
	public Review reviewDetail(int rId) {
		return rDao.reviewDetail(rId);
	}

	@Override
	public ArrayList<ReviewComment> getComment(int rId) {
		return rDao.getComment(rId);
	}

	@Override
	public int commentInsert(ReviewComment rc) {
		return rDao.commentInsert(rc);
	}

	@Override
	public int reviewCount(int rId, int rView) {
		return rDao.reviewCount(rId, rView);
	}

	@Override
	public int getTagCount(String rTag) {
		return rDao.getTagCount(rTag);
	}

	@Override
	public ArrayList<Review> selectTagList(PageInfo pi, String rTag) {
		return rDao.selectTagList(pi, rTag);
	}

	@Override
	public int getKeywordCount(String keyword) {
		return rDao.getKeywordCount(keyword);
	}

	@Override
	public ArrayList<Review> selectKeywordList(PageInfo pi, String keyword) {
		return rDao.selectKeywordList(pi, keyword);
	}

	@Override
	public int reviewLock(int rLock, int rId) {
		return rDao.reviewLock(rLock, rId);
	}

   // myPage 여행 후기 작성글 불러오기
   @Override
   public ArrayList<Review> myReviewList(String userId){
	   System.out.println();
	   System.out.println("=== 여행후기 작성글 불러오기 ===");
	   System.out.println("Review Service에 userId : " + userId + " 가 도착!");
   	return rDao.myReviewList(userId);
   }

	@Override
	public String detailPicture(String userId) {
		return rDao.detailPicture(userId);
	}
	
	@Override
	public ArrayList<Review> popularReview() {
		return rDao.popularReview();
	}
	@Override
	public int reviewUpdate(Review r) {
		return rDao.reviewUpdate(r);
	}
	
	@Override
	public Review showReviewUpdate(int rId) {
		return rDao.showReviewUpdate(rId);
	}
	
	@Override
	public Review reviewMyDetail(int rId) {
		return rDao.reviewMyDetail(rId);
	}

}