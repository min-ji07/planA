package com.kh.planA.myPage.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.planA.myPage.model.service.myPageService;
import com.kh.planA.myRoute.model.service.MyRouteService;
import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.review.model.service.ReviewService;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.together.model.vo.TogetherBoard;
import com.kh.planA.user.model.vo.User;

@Controller
public class myPageController {
	
	@Autowired myPageService mService;
	@Autowired ReviewService rService;
	@Autowired MyRouteService mrService;
	
	// 마이페이지 연결
	@RequestMapping("myPage.me")
	public String myPage() {
		return "myPage/myPage";
	}
	
	//////////////////////////////////  여행 히스토리   //////////////////////////////////
	
	// 체크리스트 저장하기 - DB로 보내기
	@RequestMapping("mCheckListSave.me")
	public String myCheckListSave(String data, HttpSession session) {
		System.out.println();
		System.out.println("=== 체크리스트 저장하기 ===");
		System.out.println("controller로 보낸 id값 :" + data + " Service로 가는중!");
		// String userId = "test1";
		User user = (User)session.getAttribute("loginUser");
		String userId = user.getUserId();	
		String test = mService.myCheckListSave(data, userId);
		
		return "redirect:mCheckList.me"; 		// 매개변수에 userId 추가하면 주석 풀어줄 것
	}
	
	// 체크리스트 불러오기, 지도, 여행패키지 불러오기 - DB에 저장된 정보 띄우기
	@RequestMapping("mCheckList.me")
	public ModelAndView myCheckList(ModelAndView model, HttpSession session) {
		// 체크한 라벨의 아이디 저장하기
		// USER_ID 가져오기
		User user = (User)session.getAttribute("loginUser");
		String userId = user.getUserId();											// userId에 일단 id 값 test1 넣기
		
		User userInfo = mService.myCheckList(userId);								// test1에 쿼리 써서 DB에서 가져온 값을 넣기
		ArrayList<RouteResult> myHistory = mrService.myHistory(userId);
		List<RouteResult> RouteResultList =  mService.myRouteList(userId);
		
		System.out.println("userInfo DB에서 가져온 객체 값 :" + userInfo);
	    System.out.println("MyRoute DB에서 가져온 객체 값 :" + myHistory);
	    System.out.println("RouteResultList DB에서 가져온 객체 값 :" + RouteResultList);
		
		model.addObject("userInfo", userInfo);										// jsp로 넘겨주기 위한 이름과 값
		model.addObject("myHistory", myHistory);
		model.addObject("RouteResultList", RouteResultList);
		model.setViewName("myPage/myPage");
		return model;	
	}
	
	//////////////////////////////////  나의 게시물   //////////////////////////////////
	
	// 나의게시물  불러오기 						
	@RequestMapping("BoardList.me")			
	public void tBoardList(HttpServletRequest request, HttpServletResponse response, ModelAndView mav,HttpSession session) throws JsonIOException, IOException { 
		// 게시판 리스트랑, 유저 아이디 , String userId
		User user = (User)session.getAttribute("loginUser");
		String userId = user.getUserId();
		// 동행구하기 작성글 불러오기
		ArrayList<TogetherBoard> boardList = mService.BoardList(userId);
		System.out.println("TogetherBoard DB에서 가져온 객체 값 : " + boardList);
		for(TogetherBoard b : boardList) {										// boardList 받아온 내용을 for문 돌려서 b안에 넣을 것
			b.settId(b.gettId()); 												// 번호
			b.setWrite_date(b.getWrite_date());									// 작성일자
			b.setTitle(URLEncoder.encode(b.getTitle(), "UTF-8"));				// 제목
			b.setIng(URLEncoder.encode(b.getIng(), "UTF-8"));					// 진행상태
		}
		// 여행 후기 작성글 불러오기 --> ReviewService
		ArrayList<Review> myReview = rService.myReviewList(userId);
		System.out.println("Review DB에서 가져온 객체 값 : " + myReview);
		for(Review r : myReview) { 
			r.setrId(r.getrId());												// 번호
			r.setrDate(r.getrDate());											// 작성일
			r.setrTitle(URLEncoder.encode(r.getrTitle(), "UTF-8"));				// 제목
			r.setrView(r.getrView());											// 조회수
			r.setrLock(r.getrLock());											// 비밀글
		}
		HashMap<String, Object> list = new HashMap<String, Object>();
		list.put("boardList", boardList);
		list.put("myReview", myReview);
		System.out.println();
		System.out.println(" === controller에서 한번에 출력 ===");
		System.out.println("list의 값 : " + list);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(list, response.getWriter());
	}
	
	// 나의 여행패키지 상세보기
	@RequestMapping("resultMyRoute.me")
	public String resultMyRoute(Model model, int rootnum) {
		RouteResult RouteResult = mService.resultMyRoute(rootnum);
		System.out.println(rootnum); // int형임
		model.addAttribute("RouteResult",RouteResult);
		return "myPage/Route";
	}
	
	//////////////////////////////////  회원정보 수정 & 탈퇴   //////////////////////////////////
	

	
	
}
