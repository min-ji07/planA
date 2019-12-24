package com.kh.planA.myPage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.together.model.vo.TogetherBoard;
import com.kh.planA.user.model.vo.User;

@Repository("mDAO")
public class myPageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 체크리스트 저장하기 - DB로 보내기
	public String myCheckListSave(String test, String userId) {
		
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("userId", userId);
		parameters.put("checkList", test);
		
		System.out.println("DAO에 " + test + " 와 " + userId + "가 도착!");
		return sqlSession.selectOne("myPageMapper.myPageCheckListSave", parameters);
	}
	

	// 체크리스트 불러오기 - DB에 저장된거 가져와서 띄우기
	public User myCheckList(String userId) {
		System.out.println("DAO에 userId : " + userId + " 가 도착!");
		return sqlSession.selectOne("myPageMapper.myPageCheckList",userId);
	}


	// 동행구하기 작성글 불러오기
	public ArrayList<TogetherBoard> BoardList(String userId) {
		System.out.println("DAO에 userId : " + userId + " 가 도착!");
		return (ArrayList) sqlSession.selectList("myPageMapper.myBoardList", userId);
	}

	// 나의 여행패키지 불러오기
	public List<RouteResult> myRouteList(String userId) {
		System.out.println("DAO에 userId : " + userId + " 가 도착!");
		List<RouteResult> RouteResult = (ArrayList) sqlSession.selectList("myPageMapper.myRouteList", userId);
		
		return RouteResult;
	}

	// 나의 여행패키지 상세보기
	public RouteResult resultMyRoute(int rootnum) {
		System.out.println("DAO에 rootnum  : " + rootnum + " 가 도착!");
		RouteResult RouteResult = null;
		return RouteResult = sqlSession.selectOne("myPageMapper.MyPageRouteResult",rootnum);
		
	}
	
	// 여행 후기 작성글 불러오기 -- ReviewDAO로
	
	
	

	
}
