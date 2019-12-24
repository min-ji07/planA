package com.kh.planA.together.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.planA.common.TbPagination;
import com.kh.planA.together.model.service.TogetherBoardService;
import com.kh.planA.together.model.vo.PageInfo;
import com.kh.planA.together.model.vo.Reply;
import com.kh.planA.together.model.vo.TogetherBoard;
import com.kh.planA.user.model.vo.User;

@Controller
public class TogetherController {

	@Autowired
	private TogetherBoardService tbService;

	// 첫페이지 - 전체 게시물 출력하기
	@RequestMapping("tbSelectView.me")
	public ModelAndView tbInsertView( /* @RequestParam("page") int page, */ModelAndView mv) {

		int listCount = tbService.getListCount();
		ArrayList<TogetherBoard> list = tbService.selectList();
		// System.out.println("list : " + list);

		if (list != null) {
			// view로 보내야할 것 list, pi,
			// 어떤 view로 보낼 건지
			mv.addObject("list", list)
					// .addObject("page", page)
					.setViewName("together/togetherBoardList");

		}
		return mv;
	}

	// 페이징 처리하기
	@RequestMapping("tblist.me")
	public ModelAndView boardList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {

		// int listCount = tbService.getListCount();
		// ArrayList<TogetherBoard> list = tbService.selectList();

		int currentPage = 1;
		/* currentPage = page; */

		if (page != 0) {
			currentPage = page;
		}
		// System.out.println("currentPage : " + currentPage);

		// System.out.println("컨트롤러 넘어오닝?ㅜㅜ");
		int listCount = tbService.getListCount();

		PageInfo pi = TbPagination.getPageInfo(currentPage, listCount);
		ArrayList<TogetherBoard> list = tbService.selectPageList(pi);
		// System.out.println("page : " + page);
		// System.out.println(pi);

		if (list != null) {
			// view로 보내야 할 것 : list, pi
			// 어떤 view로 보낼 건지
			mv.addObject("list", list).addObject("pi", pi).setViewName("together/togetherBoardList");
		}

		// return "board/boardListView";
		return mv;
	}

	/*
	 * // 게시물리스트에서 국가, 도시선택하고 검색하기
	 * 
	 * @RequestMapping("tbSelectMy.me") public ModelAndView tbSelectMy(String
	 * selected, ModelAndView mv) {
	 * 
	 * System.out.println(" 검색 controller : " + selected); int selectListCount =
	 * tbService.getSelectListCount(selected); ArrayList<TogetherBoard> list =
	 * tbService.selectMy(selected); System.out.println("list : " + list);
	 * System.out.println("selectListCount : " + selectListCount);
	 * 
	 * if (list != null) { // view로 보내야할 것 list, pi, // 어떤 view로 보낼 건지
	 * mv.addObject("list", list) .setViewName("together/togetherBoardList"); 원래 이거야
	 * .setViewName("together/togetherBoardSelect");
	 * 
	 * } return mv; }
	 */
	
	// 다원이가 알려준거
	@RequestMapping("tbSelectMy.me")
	public ModelAndView tbSelectMy(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv,
			String selected) {

		// int listCount = tbService.getListCount();
		// ArrayList<TogetherBoard> list = tbService.selectList();
		System.out.println("selected :" + selected);
		int listCount = tbService.getSelectListCount(selected);

		int currentPage = 1;
		/* currentPage = page; */

		if (page != null) {
			currentPage = page;
		}
	System.out.println("검색한거 currentPage : " + currentPage);

	System.out.println("검색한거 컨트롤러 넘어오닝?ㅜㅜ");
	//	int listCount = tbService.getListCount();

		PageInfo pi = TbPagination.getPageInfo(currentPage, listCount);
		ArrayList<TogetherBoard> list = tbService.selectMy(selected, pi);
	System.out.println("검색한거 page : " + page);
	System.out.println("검색한거 pi :" +pi);

		if (list != null) {
			// view로 보내야 할 것 : list, pi
			// 어떤 view로 보낼 건지
			mv.addObject("list", list)
			.addObject("pi", pi)
			.addObject("selected",selected)
			.setViewName("together/togetherBoardSelect");
		}

		// return "board/boardListView";
		return mv;
	}

	/*
	 * // 게시물리스트에서 국가, 도시선택하고 검색하기+페이징처리(수정본이야)
	 * 
	 * @RequestMapping("tbSelectMy.me") public ModelAndView
	 * tbSelectMy(@RequestParam(value= "page", required=false) Integer page, String
	 * selected, ModelAndView mv) {
	 * 
	 * 
	 * int currentPage = 1; if(page != 0) { currentPage = page; }
	 * 
	 * System.out.println("currentPage : " + currentPage);
	 * System.out.println(" 검색 controller : " + selected); int selectListCount =
	 * tbService.getSelectListCount(selected);
	 * 
	 * System.out.println("selectListCount : " + selectListCount);
	 * 
	 * PageInfo pi = TbPagination.getPageInfo(currentPage, selectListCount);
	 * ArrayList<TogetherBoard> list = tbService.selectMy(pi, selected);
	 * System.out.println("list : " + list); if (list != null) { // view로 보내야할 것
	 * list, pi, // 어떤 view로 보낼 건지 mv.addObject("list", list) .addObject("pi",pi)
	 * .setViewName("together/togetherBoardList");
	 * 
	 * } return mv; }
	 */

// 게시물 제목 누르면 글상세보기
	@RequestMapping("tbDetailView.me")
	public ModelAndView TogetherBoardDetailView(@RequestParam("tId") int tId,
			/* @RequestParam("page") int page, */ ModelAndView mv,HttpSession session) {
		// System.out.println("Controller: " + tId);
		User user = (User)session.getAttribute("loginUser");
		String userId = null;
		if(user != null) {
			userId = user.getUserId();
			System.out.println(userId);
		}
		
		mv.addObject("userid",userId);
		TogetherBoard tb = tbService.selectTogetherBoard(tId);
		
		if (tb != null) {
			// b, page, view
			mv.addObject("TogetherBoard", tb)
//				  .addObject("page", page)
					.setViewName("together/togetherBoardDetail");
		}
		return mv;

	}

	// 게시물 글쓰기
	@RequestMapping("tbInsertView.me")
	public String tboardInsertView(Model model,HttpSession session) {
		User user = (User)session.getAttribute("loginUser");
		
		if(user != null) {
			String userId = user.getUserId();
			System.out.println(userId);
			model.addAttribute("userId",userId);
			return "together/togetherBoardInsert";
		}else {
			return "user/login";
		}
		
	}

	// 게시물 글쓰기
	@RequestMapping("tbInsert.me")
	public String boardInsert(@ModelAttribute TogetherBoard tb, HttpServletRequest request) {

		System.out.println("tb : " + tb);

		int result = tbService.insertBoard(tb);

		if (result > 0) {
			return "redirect:tblist.me?page=1";
		} else {
			return null;
		}

	}

	// 게시물 수정하기 페이지로 가는거-> 일단 수정전 객체 가져오기
	@RequestMapping("tbUpdateView.me")
	public ModelAndView tboardUpdateView(@RequestParam("tId") int tId, ModelAndView mv) {

		// tId객체 가져오기
		TogetherBoard tb = tbService.tboardUpdateView(tId);
		System.out.println("게시물 맞는거 가져오기 : " + tb);

		if (tb != null) {
			mv.addObject("TogetherBoard", tb).setViewName("together/togetherBoardUpdate");

		}
		return mv;
	}

	// 게시물 수정하기
	@RequestMapping("tbUpdate.me")
	public String boardUpdate(@ModelAttribute TogetherBoard tb, HttpServletRequest request, int tId) {

		System.out.println("tId : " + tId);
		System.out.println("수정 후 tb : " + tb);

		int result = tbService.updateBoard(tb);

		if (result > 0) {
			return "redirect:tblist.me?page=1";
		} else {
			return null;
		}

	}

	// 게시물 삭제하기
	@RequestMapping("tbDelete.me")
	public String boardUpdate(@ModelAttribute TogetherBoard tb, HttpServletRequest request) {

		System.out.println("삭제할 tb : " + tb);
		int result = tbService.deleteBoard(tb);

		if (result > 0) {
			return "redirect:tblist.me?page=1";
		} else {
			return null;
		}

	}

	// 게시물 댓글 리스트

	@RequestMapping("tbrList.me")
	public void getReplyList(@RequestParam("tId") int tId, HttpServletResponse response)
			throws JsonIOException, IOException {
		// System.out.println("연결");

		ArrayList<Reply> tbrList = tbService.selectReplyList(tId);

		for (Reply tbr : tbrList) {
			tbr.setrContent(URLEncoder.encode(tbr.getrContent(), "UTF-8"));
		}

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(tbrList, response.getWriter());
		// System.out.println("tbrList : " +tbrList);
	}

	// 게시물 댓글 쓰기
	@RequestMapping("addReply.me")
	@ResponseBody
	// ㄴ> ResponseBody : 응답하는 바디부분에 리턴값을 넘겨준다
	public String addReply(@ModelAttribute Reply r, HttpSession session) {
		System.out.println("insert 연결");
		User user = (User)session.getAttribute("loginUser");
		if(user == null) {
			return "user/login";
		}
		String user_id = user.getUserId();
		// User loginUser = (User)session.getAttribute("loginUser");
		// int rWriter = loginUser.getMid();
		// r.setmId(rWriter);
		// System.out.println("loginUser : " + loginUser);
		r.setUser_id(user_id);

		int result = tbService.insertReply(r);
		// System.out.println("댓글 result : "+ result);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}

	}

}
