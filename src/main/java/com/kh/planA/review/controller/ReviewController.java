package com.kh.planA.review.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.common.Pagination;
import com.kh.planA.review.model.service.ReviewService;
import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;
import com.kh.planA.review.model.vo.ReviewComment;
import com.kh.planA.user.model.vo.User;


@Controller
public class ReviewController {

	@Autowired
	private ReviewService rService;
	
	/**
	 * 전체 후기 조회
	 * @param page
	 * @param mv
	 * @return
	 */
	@RequestMapping("rList.me")
	public ModelAndView reviewList(@RequestParam(value="page", required=false) Integer page,
							ModelAndView mv,HttpSession session) {
		User user = (User)session.getAttribute("loginUser");
		String userId = null;
		if(user == null) {
			
			mv.addObject("userId",userId);
		}else {
			userId = user.getUserId();
			mv.addObject("userId",userId);
		}
		
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = rService.getListCount();
		
		System.out.println("listCount : " + listCount);
		
		String cCount = sideCount();
														
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> list = rService.selectList(pi);
		
		for(Review r: list) {
			System.out.println(r);
		}
		
		
		if(list != null) {
			mv.addObject("list", list)
			.addObject("pi", pi)
			.addObject("cCount",cCount)
			.setViewName("review/reviewList");
		}
		
		return mv;
	}
	
	
	/**
	 * 나라별 조회
	 * @param page
	 * @param country
	 * @param mv
	 * @return
	 */
	@RequestMapping("rSearch.me")
	public ModelAndView reviewSearchCountry(@RequestParam(value="page", required=false) Integer page,
			String country, String rTag, ModelAndView mv, String keyword) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		System.out.println("keyword : " + keyword);
		
		String cCount = sideCount();
		
		int listCount = 0;
		
		PageInfo pi = null;
		
		ArrayList<Review> list = new ArrayList<Review>();
		
		if(country != null) {
			int taiwanCount = rService.getTaiwanCount();
			int vietnamCount = rService.getVietnamCount();
			int japanCount = rService.getJapanCount();
			int chinaCount = rService.getChinaCount();
			int philCount = rService.getPhilCount();
			int thailandCount = rService.getThailandCount();
			

			switch(country) {
			case "대만" : listCount = taiwanCount;
			case "베트남" : listCount = vietnamCount;
			case "일본" : listCount = japanCount;
			case "중국" : listCount = chinaCount;
			case "필리핀" : listCount = philCount;
			case "태국" : listCount = thailandCount;
			}
			
			System.out.println("country listCount : " + listCount);
			
			pi = Pagination.getPageInfo(currentPage, listCount);
			list = rService.selectCList(pi, country);
			
		} else if(rTag !=null) {
			listCount = rService.getTagCount(rTag);
			System.out.println("rTag listCount : " + listCount);
			
			pi = Pagination.getPageInfo(currentPage, listCount);
			list = rService.selectTagList(pi, rTag);
			
		} else {
			listCount = rService.getKeywordCount(keyword);
			System.out.println("keyword listCount : " + listCount);
			
			pi = Pagination.getPageInfo(currentPage, listCount);
			list = rService.selectKeywordList(pi, keyword);
		}
		
		
		for(Review r: list) {
			System.out.println(r);
		}
		
		if(list != null) {
			mv.addObject("list", list)
			.addObject("pi", pi)
			.addObject("cCount",cCount)
			.setViewName("review/reviewList");
		}
		
		return mv;
	}
	
	/**
	 * 후기 작성 페이지 이동
	 * @return
	 */
	@RequestMapping("rInsertView.me")
	public String reviewInsertView(HttpSession session) {
		User loginUser = (User)session.getAttribute("loginUser");
    	if(loginUser == null) {
			return "user/login";
    	}
		return "review/reviewInsert";
	}
	
 
    /**
     * 후기 작성
     * @param rTag
     * @param country
     * @param rTitle
     * @param rContent
     * @param mv
     * @param request
     * @param photoOrigin
     * @return
     */
    @RequestMapping(value = "rInsert.me", method = RequestMethod.POST)
    public ModelAndView reviewInsert(HttpSession session,String rTag, String country, String rTitle, String rContent,
    		ModelAndView mv, HttpServletRequest request, 
			@RequestParam(name="photoOrigin", required=true) MultipartFile photoOrigin) {
    	User loginUser = (User)session.getAttribute("loginUser");
    	if(loginUser == null) {
    		mv.setViewName("user/login");
			return mv;
    	}
    	mv.addObject("loginUser",loginUser);
    	System.out.println("rTag : " + rTag);
    	System.out.println("country : " + country);
    	System.out.println("rTitle : " + rTitle);
        System.err.println("저장할 내용 : " + rContent);
        
        // TODO userId 세션 가져오기
        String userId = loginUser.getUserId();
        
        String root = request.getSession().getServletContext().getRealPath("resources");
        String filePath = root + "\\reviewPhoto";
        
        String originName = photoOrigin.getOriginalFilename(); 
        String random = UUID.randomUUID().toString().replaceAll("-", ""); // 랜덤 String 생성
        String ext = originName.substring(originName.lastIndexOf(".")); // 확장자 분리
        String changeName = random + ext;
        
        System.out.println("originName : " + originName);
        System.out.println("changeName : " + changeName);
        
        try {
        	photoOrigin.transferTo(new File(filePath + "\\" + changeName));
			
			int result = rService.reviewInsert(userId,rTag,country,rTitle,rContent,originName,changeName);
			
			if(result > 0) {
				mv.setViewName("redirect:rList.me");
			} else {
				mv.addObject("tid", "리뷰 등록 실패");
			}
			
			return mv;
			
		} catch (IOException e) {
			// 등록이 제대로 안될 시 파일 삭제
			new File(filePath + "\\" + changeName).delete();
			mv.addObject("msg", "파일 등록 실패");
			
			// TODO 에러페이지 만들면 return 에러페이지로 보내기
			return null;
		}
        
    }
	 
    
    /**
     * 다중 파일 업로드
     * @param request
     * @return
     */
    @RequestMapping(value = "fileUpload.me",
                  method = RequestMethod.POST)
    @ResponseBody
    public String multiplePhotoUpload(HttpServletRequest request) {
        // 파일정보
        StringBuffer sb = new StringBuffer();
        try {
            // 파일명을 받는다 - 일반 원본파일명
            String oldName = request.getHeader("file-name");
            System.out.println("oldName : " + oldName);
            // 파일 기본경로 _ 상세경로
            String root = request.getSession().getServletContext().getRealPath("resources");
            String filePath = root+"\\editor\\photoUpload\\";
            String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss")
                          .format(System.currentTimeMillis()))
                          .append(UUID.randomUUID().toString())
                          .append(oldName.substring(oldName.lastIndexOf("."))).toString();
            System.out.println("saveName : " + saveName);
            
            InputStream is = request.getInputStream();
            OutputStream os = new FileOutputStream(filePath + saveName);
            int numRead;
            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
            while ((numRead = is.read(b, 0, b.length)) != -1) {
                os.write(b, 0, numRead);
            }
            os.flush();
            os.close();
            // 정보 출력
            sb = new StringBuffer();
            sb.append("&bNewLine=true")
              .append("&sFileName=").append(oldName)
              .append("&sFileURL=").append("http://localhost:8686/planA/resources/editor/photoUpload/")
              .append(saveName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return sb.toString();
    }
    
    
    /**
     * 후기 디테일(후기 한개 조회)
     * @param mv
     * @param rId
     * @param page
     * @param rView
     * @return
     */
    @RequestMapping("rDetail.me")
    public ModelAndView reviewDetail(HttpSession session, ModelAndView mv, int rId, @RequestParam("page") int page, int rView, String rUserId) {
    	User user = (User)session.getAttribute("loginUser");
		System.out.println(user);
		if(user ==null) {
			mv.setViewName("user/login");
			return mv;
		}
		
		Review r = new Review();
		
		System.out.println("user.getUserId() " + user.getUserId());
		System.out.println("rUserId : " + rUserId);
		
		if(user.getUserId().equals(rUserId)) {
			r = rService.reviewMyDetail(rId);
		} else {
			r = rService.reviewDetail(rId);
		}
		
		System.out.println("page : " + page);
    	System.out.println("rId : " + rId);
    	
    	int result = rService.reviewCount(rId, rView);
    	
    	System.out.println("=== detail review ===");
    	System.out.println(r);
		
		String cCount = sideCount();
		ArrayList<Review> popular = sidePopular();
		
		ArrayList<ReviewComment> cList = rService.getComment(rId);
		
		System.out.println("=== detail comment ===");
		for(ReviewComment rc: cList) {
			System.out.println(rc);
			if(rc.getProfilePicture() == null) {
    			rc.setProfilePicture("user.png");
    		}
		}
		int rNum = cList.size();
		System.out.println("rNum(댓글갯수) : " + rNum);
		
		if(r != null) {
			String detail = rService.detailPicture(r.getUserId());
			System.out.println(detail);
			mv.addObject("review", r)
			.addObject("detail",detail)
			.addObject("rNum",rNum)
			.addObject("cList",cList)
			.addObject("page", page)
			.addObject("cCount",cCount)
			.addObject("popular",popular);
			if(user != null) {
				mv.addObject("user",user);	
			}else {
				mv.addObject("user",null);
			}
			
			mv.setViewName("review/reviewDetail");
		}
    	
    	return mv;
    }
    
    
    /**
     * 댓글 등록
     * @param rc
     * @param mv
     * @return
     */
    @RequestMapping("cInsert.me")
    public ModelAndView commentInsert(ReviewComment rc, ModelAndView mv) {
    	
    	System.out.println(rc);
    	int result = rService.commentInsert(rc);
    	
    	ArrayList<ReviewComment> newList = rService.getComment(rc.getRefrId());
    	// ㄴ > 불러오기
    	System.out.println("=== 전체 comment ===");
    	for(ReviewComment c : newList) {
    		if(c.getProfilePicture() == null) {
    			c.setProfilePicture("user.png");
    		}
    		System.out.println(c);
    		
    	}
    	
    	ArrayList<String> dateToString = new ArrayList<String>();
    	
    	for(ReviewComment cc : newList) {
    		dateToString.add(cc.getcDate().toString());
    	}
		 
    	
    	if(result > 0) {
    		mv.addObject("newComment", newList);
    		mv.addObject("dateToString",dateToString);
			mv.setViewName("jsonView");
		} else {
			mv.addObject("msg", "리뷰 등록 실패");
		}
		
    	return mv;
    }
    
    
	
	 @RequestMapping("rLock.me") 
	 @ResponseBody
	 public String reviewLock(@RequestParam("rLock") int rLock, int rId) {
 
		 System.out.println(rLock);
		 System.out.println(rId);
		 int result = rService.reviewLock(rLock, rId);
 
		 return "success";
	 }
	 
    

		@RequestMapping("rUpdateView.me")
		public ModelAndView showReviewUpdate(ModelAndView mv, int rId) {
			
			Review beforeReview = rService.showReviewUpdate(rId);
			
			System.out.println("==beforeReview==");
			System.out.println(beforeReview);
			
			mv.addObject("bReview",beforeReview);
			mv.setViewName("review/reviewUpdate");
			
			return mv;
		}
		 
		
		
		@RequestMapping(value = "rUpdate.me", method = RequestMethod.POST)
	    public ModelAndView reviewUpdate(Review r, HttpServletRequest request, ModelAndView mv) {
	    	
			System.out.println("수정한 객체 " + r);
	        	
	    	int result = rService.reviewUpdate(r);
	    	
	    	if(result > 0) {
				mv.setViewName("redirect:rList.me");
			} else {
				mv.addObject("tid", "리뷰 등록 실패");
			}
			
			return mv;
	        
	    }
		
		
		
	    
	    /**
	     * sidebar 나라별 게시글 수 조회
	     * @return
	     */
	    public String sideCount() {
	    	
	    	int taiwanCount = rService.getTaiwanCount();
			int vietnamCount = rService.getVietnamCount();
			int japanCount = rService.getJapanCount();
			int chinaCount = rService.getChinaCount();
			int philCount = rService.getPhilCount();
			int thailandCount = rService.getThailandCount();
			
			String cCount = taiwanCount + "," + vietnamCount + "," + japanCount 
							+ "," + chinaCount + "," + philCount + "," + thailandCount;
			
			return cCount;
	    }
	    
	    
	    /**
	     * sidebar 최근 게시물 세개 조회
	     * @return
	     */
	    public ArrayList<Review> sidePopular(){
	    	
	    	ArrayList<Review> popular = rService.popularReview();
	    	
	    	if(popular != null) {
	    		return popular;
	    	} else {
	    		return null;
	    	}
	    }

}
