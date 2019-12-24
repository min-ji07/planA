package com.kh.planA.myRoute.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.planA.myRoute.model.service.MyRouteService;
import com.kh.planA.myRoute.model.vo.AirportCode;
import com.kh.planA.myRoute.model.vo.City;
import com.kh.planA.myRoute.model.vo.MyRoute;
import com.kh.planA.myRoute.model.vo.RoutePlan;
import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.user.model.vo.User;



@Controller
public class MyRouteController {
	@Autowired
	private MyRouteService mrS;
	
	//myRoute 경로 이동 컨트롤러
	@RequestMapping(value="myRoute.mr")
	   public String showMemberJoinView(HttpSession session) {
		User user = (User)session.getAttribute("loginUser");
		
		if(user != null) {
			String userId = user.getUserId();
			System.out.println(userId);
		}
		
	      return "myRoute/myRouteSearch";
	   }
	
	@RequestMapping(value="myRouteSearch.mr")
	   public String myRouteSearch(RoutePlan rp,Model model,HttpSession session) {
		
		try {
			User user = (User)session.getAttribute("loginUser");
			System.out.println(user);
			if(user != null) {
				City city = mrS.myPlan(rp);
				model.addAttribute("city", city);
				
		        List<AirportCode> airportCodeList = mrS.DepranceAPI(city,rp);
		        List<AirportCode> airportCodeList2 = mrS.EntranceAPI(city,rp);
				model.addAttribute("airportCodeList",airportCodeList);
				model.addAttribute("airportCodeList2",airportCodeList2);
				model.addAttribute("rp",rp);
//			        ㄴ> 어레이 리스트 넘기기?
				return "myRoute/myRoute";
			}else {
				return "user/login";
			}
			
		}catch(Exception e) {
			return "errorPage";
		}
	   }
		
	
	@RequestMapping(value="myRouteInsert.mr")
	public String insertMyRoute(Model model, MyRoute myRoute,HttpSession session) {
		System.out.println("컨트롤러 시작 myRoute :"+ myRoute);
		User user = (User)session.getAttribute("loginUser");
		System.out.println(user);
		if(user != null) {
			myRoute.setUserId(user.getUserId()); 
			RouteResult RouteResult = mrS.RetueResult(myRoute);
			model.addAttribute("RouteResult",RouteResult);
			return "myPage/Route";
		}else {
			return "user/login";
		}
	}
}
