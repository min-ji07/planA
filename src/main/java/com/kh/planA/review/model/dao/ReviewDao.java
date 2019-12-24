package com.kh.planA.review.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.review.model.vo.ReviewComment;

@Repository("rDao")
public class ReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("reviewMapper.getListCount");
	}

	public ArrayList<Review> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectList", null, rowBounds);
	}

	public int getTaiwanCount() {
		return sqlSession.selectOne("reviewMapper.getTaiwanCount");
	}

	public int getVietnamCount() {
		return sqlSession.selectOne("reviewMapper.getVietnamCount");
	}

	public int getJapanCount() {
		return sqlSession.selectOne("reviewMapper.getJapanCount");
	}

	public int getChinaCount() {
		return sqlSession.selectOne("reviewMapper.getChinaCount");
	}

	public int getPhilCount() {
		return sqlSession.selectOne("reviewMapper.getPhilCount");
	}

	public int getThailandCount() {
		return sqlSession.selectOne("reviewMapper.getThailandCount");
	}

	public ArrayList<Review> selectCList(PageInfo pi, String country) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectCList", country, rowBounds);
	}

	public int reviewInsert(String userId, String rTag, String country, String rTitle, String rContent, String originName, String changeName) {

		Map<String,String> param = new HashMap<String,String>();
		
		System.out.println("DAO originName : " + originName);
		System.out.println("DAO changeName : " + changeName);
		
		param.put("userId", userId);
		param.put("rTag", rTag);
		param.put("country", country);
		param.put("rTitle", rTitle);
		param.put("rContent", rContent);
		param.put("photoOrigin", originName);
		param.put("photoChange", changeName);
		
		return sqlSession.insert("reviewMapper.reviewInsert",param);
	}

	public ArrayList<Review> recentReview() {
		return (ArrayList)sqlSession.selectList("reviewMapper.recentReview");
	}

	public Review reviewDetail(int rId) {
		return sqlSession.selectOne("reviewMapper.reviewDetail",rId);
	}

	public ArrayList<ReviewComment> getComment(int rId) {
		return (ArrayList)sqlSession.selectList("reviewMapper.comment",rId);
	}

	public int commentInsert(ReviewComment rc) {
		return sqlSession.insert("reviewMapper.commentInsert",rc);
	}

	public int reviewCount(int rId, int rView) {
		
		Map<String, Integer> param = new HashMap<String, Integer>();
		param.put("rId", rId);
		param.put("rView", rView+1);
		
		return sqlSession.update("reviewMapper.reviewCount", param);
	}

	public int getTagCount(String rTag) {
		return sqlSession.selectOne("reviewMapper.getTagCount",rTag);
	}

	public ArrayList<Review> selectTagList(PageInfo pi, String rTag) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectTagList", rTag, rowBounds);
	}

	public int getKeywordCount(String keyword) {
		return sqlSession.selectOne("reviewMapper.getKeywordCount",keyword);
	}

	public ArrayList<Review> selectKeywordList(PageInfo pi, String keyword) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectKeywordList", keyword, rowBounds);
	}

	public int reviewLock(int rLock, int rId) {
		
		Map<String, Integer> param = new HashMap<String, Integer>();
		param.put("rLock", rLock);
		param.put("rId", rId);
		System.out.println("다오 : "+rLock+rId);
		return sqlSession.update("reviewMapper.reviewLock",param);
	}
   
   // myPage 여행 후기 작성글 불러오기
   public ArrayList<Review> myReviewList(String userId){
	   System.out.println("Review DAO에 userId : " + userId + " 가 도착!");
	   return (ArrayList)sqlSession.selectList("reviewMapper.myReviewList", userId);
   }

   public String detailPicture(String userId) {
	   System.out.println(userId);
		return sqlSession.selectOne("reviewMapper.detailPicture", userId);
	}

   public Review showReviewUpdate(int rId) {
		return sqlSession.selectOne("reviewMapper.showReviewUpdate",rId);
	}

	public int reviewUpdate(Review r) {
		return sqlSession.update("reviewMapper.reviewUpdate",r);
	}
	
	public ArrayList<Review> popularReview() {
		return (ArrayList)sqlSession.selectList("reviewMapper.popularReview");
	}

	public Review reviewMyDetail(int rId) {
		return sqlSession.selectOne("reviewMapper.reviewMyDetail",rId);
	}
}