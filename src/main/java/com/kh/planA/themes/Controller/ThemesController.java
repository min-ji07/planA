package com.kh.planA.themes.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.themes.model.service.ThemesService;
import com.kh.planA.themes.model.vo.Theme;
import com.kh.planA.user.model.vo.User;

@Controller
public class ThemesController {

	@Autowired
	private ThemesService tService;

	@RequestMapping("myRouteInsertView.me")
	public String myRouteInsertView(HttpSession session) {
		
		return "myRoute/myRoute";
	}
	@RequestMapping("themesInsertView.me")
	public ModelAndView themesInsertView(ModelAndView mv) {
		
		int listCount = tService.getListCount();
		ArrayList<Theme> list = tService.selectList();
		System.out.println("ddd"+list);
		
		if(list != null) {
			//viwe로 보내야할것 list, pi
			//어떤 view로 보낼 건지
			mv.addObject("list", list)
			  .setViewName("travelInfo/themesInfoForm");
			
		}
		return mv;
	}
	
	@RequestMapping("tdetail.me")
	public ModelAndView themeDetail(@RequestParam("tseq") int tseq, ModelAndView mv) {
		System.out.println("Controller : "+tseq);
		Theme t = tService.selectTheme(tseq);
		
		if(t != null) {
			mv.addObject("Theme", t)
			  .setViewName("travelInfo/themesDetailsForm");
		}
			
		return mv;
		
	}
	
	@RequestMapping("tCheckListSave.me")
	public ModelAndView tCheckListSave(String checked, ModelAndView mv) {
		System.out.println("controller : "+checked);
		
		/* String result = tService.tCheckListSave(checked); */
		int checkListCount = tService.getCheckListCount(checked);
		ArrayList<Theme> list = tService.tCheckListSave(checked);
		
		if(list != null) {
			mv.addObject("list", list)
			  .setViewName("travelInfo/themesInfoForm");
		}

		//return "travelInfo/themesInfoForm";
		return mv;
	}
	
	@RequestMapping("themeinsert.me")
	public String themeinsert(Model model, RouteResult RouteResult,HttpSession session ) {
		System.out.println("컨트롤러얌"+RouteResult);
		User user = (User)session.getAttribute("loginUser");
		System.out.println(user);
		if(user == null) {
			return "user/login";
		}
		RouteResult.setUser_id(user.getUserId());
		int result = tService.insertTheme(RouteResult);
		if(result > 0) {
			return "travelInfo/themesInfoForm";
			// redirect:blist.me -> 링크로 넘어가고 싶을때
		}else {
			//에러에러
			return null;
		}
	}
}
