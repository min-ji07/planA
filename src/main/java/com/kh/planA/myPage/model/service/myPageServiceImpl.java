package com.kh.planA.myPage.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.myPage.model.dao.myPageDAO;
import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.together.model.vo.TogetherBoard;
import com.kh.planA.user.model.vo.User;

@Service("mService") // Service는 bService라는 이름으로 불림
public class myPageServiceImpl implements myPageService{
	
	@Autowired
	private myPageDAO mDAO;
	
	// 체크리스트 저장하기 - DB로 보내기
	@Override
	public String myCheckListSave(String test, String userId) {
		System.out.println("Service에 " + test + " 와 " + userId + " 가 도착!");
		return mDAO.myCheckListSave(test, userId);
	}

	// 체크리스트 불러오기 - DB에 저장된거 가져와서 띄우기
	@Override
	public User myCheckList(String userId) {
		System.out.println();
		System.out.println("=== 체크리스트 불러오기 ===");
		System.out.println("Service에 userId : " + userId + " 가 도착!");
		return mDAO.myCheckList(userId);
	}
	
	// 동행구하기 작성글 불러오기
	@Override
	public ArrayList<TogetherBoard> BoardList(String userId) {
		System.out.println();
		System.out.println("=== 동행구하기 작성글 불러오기 ===");
		System.out.println("Service에 userId : " + userId + " 가 도착!");
		return mDAO.BoardList(userId);
	}

	// 나의 여행패키지 불러오기
	@Override
	public List<RouteResult> myRouteList(String userId) {
		List<RouteResult> RouteResult = mDAO.myRouteList(userId);
		
		System.out.println();
		System.out.println("=== 나의 여행패키지 불러오기 ===");
		System.out.println("Service에 userId : " + userId + " 가 도착!");
		for(int i = 0, size = RouteResult.size(); i < size; i++) {
			RouteResult rr = RouteResult.get(i);
			System.out.println(rr);
		}
		return RouteResult;
	}

	// 나의 여행패키지 상세보기
	@Override
	public RouteResult resultMyRoute(int rootnum) {
		System.out.println();
		System.out.println("=== 나의 여행패키지 불러오기 ===");
		System.out.println("Service에 userId : " + rootnum + " 가 도착!");
		RouteResult RouteResult = mDAO.resultMyRoute(rootnum);
		return RouteResult;
	}
	
	
}
