package com.kh.planA.myPage.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.together.model.vo.TogetherBoard;
import com.kh.planA.user.model.vo.User;

public interface myPageService {

	// 체크리스트 저장하기 - DB로 보내기
	String myCheckListSave(String test, String userId);

	// 체크리스트 불러오기, 나의 여행패키지 불러오기 - DB에 저장된거 가져와서 띄우기
	User myCheckList(String userId);
	
	// 지도 값 가져오기 -- MyRouteService로
	
	// 나의 여행 불러오기 
	List<RouteResult> myRouteList(String userId);
	
	// 동행구하기 작성글 불러오기
	ArrayList<TogetherBoard> BoardList(String userId);

	// 나의 여행패키지 상세보기
	RouteResult resultMyRoute(int rootnum);

	// 여행 후기 작성글 불러오기 -- ReviewService로 -- ReviewServiceImpl로

	
	
	
	
	
	}

