package com.kh.planA.user.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.common.CommonUtils;
import com.kh.planA.user.model.service.UserService;
import com.kh.planA.user.model.vo.User;
@SessionAttributes("loginUser")

@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
		
	// 회원가입 화면 보여주기
	@RequestMapping("join.me")
	public String showJoinView() {
		return "user/join";
	}
	
	// 아이디 중복 체크
	@RequestMapping("duplicationCheck.me")
	public ModelAndView duplicationCheck(@RequestParam String id, ModelAndView mv) {		
		Map map = new HashMap();
		
		try {
			int result = us.duplicationCheck(id);

			if(result == 0) {
				map.put("isUsable", true);	
			}else {
				map.put("isUsable",false);
			}		
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
		} catch (Exception e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}	
		return mv;
	}
	
	// 회원가입 기능
	@RequestMapping("insertUser.me")
	public String insertUser(Model model, User user, HttpServletRequest request,
			String birthYear, String birthMonth, String birthDay,
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		String originFileName = photo.getOriginalFilename();

		if(originFileName != "") {
			String root = request.getSession().getServletContext().getRealPath("resources");		
			String filePath = root + "\\profileImg";
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			
			try {
				photo.transferTo(new File(filePath + "\\" + changeName + ext));
				
				user.setOriginName(originFileName);
				user.setChangeName(changeName + ext);
			}catch(Exception e) {
				new File(filePath + "\\" + changeName + ext).delete();
				model.addAttribute("msg", "파일 등록 실패!");
				return "common/errorPage";
			}
		}

		String encPassword = passwordEncoder.encode(user.getUserPwd());		
		user.setUserPwd(encPassword);
		
		String userBirth = birthYear + birthMonth + birthDay;
		user.setBirthday(userBirth);
		
		int result = us.insertUser(user);
		
		if(result > 0) {
			try {
				us.sendEmail(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "user/confirm_before";
		}else {
			model.addAttribute("msg","회원가입 실패");
			return "common/errorPage";
		}
	}
	
	// 이메일 인증 완료했을 때
	@RequestMapping("joinConfirm.me")
	public String emailConfirm(Model model, User user) {
		int result = us.confirmAuthkey(user);
		
		if(result > 0) {
			return "user/confirm_after";
		}else {
			model.addAttribute("msg","이메일 인증 실패");
			return "common/errorPage";
		}
	}
	
	// 로그인 화면 보여주기
	@RequestMapping("login.me")
	public String showLoginView(Model model, HttpSession session) {
		return "user/login";
	}
	
	// 로그인 할 때 유효한 아이디인지 체크
	@RequestMapping("loginIdCheck.me")
	public ModelAndView loginCheck(String id, String pwd, ModelAndView mv) {
		Map map = new HashMap();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPwd(pwd);
		
		try {
			User selectUser = us.loginCheck(user);
			
			if(selectUser != null) {
				map.put("isUsableId", true);
				
				if(passwordEncoder.matches(user.getUserPwd(), selectUser.getUserPwd())) {
					map.put("isUsablePwd", true);
				}else {
					map.put("isUsablePwd", false);
				}
			}else {
				map.put("isUsableId", false);
				map.put("isUsablePwd", false);
			}		

			mv.addAllObjects(map);
			mv.setViewName("jsonView");
		}catch(Exception e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 로그인 기능
	@RequestMapping("loginCheck.me")
	public String loginCheck(User user, Model model) {
		try {			
			User loginUser = us.loginCheck(user);
			
			if(passwordEncoder.matches(user.getUserPwd(), loginUser.getUserPwd())) {
				if(loginUser.getAuthkey().equals("Y")) {
					model.addAttribute("loginUser", loginUser);			
					return "main";
				}else {
					return "user/confirm_yet";
				}
			}else {
				model.addAttribute("msg", "비밀번호가 다릅니다.");
				return "common/errorPage";
			}		
		}catch(Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}	
	}

	// 네이버 아이디로 로그인 시 콜백
	@RequestMapping("callback.me")
	public String callBack() {
		return "user/callback";
	}
	
	// 네이버 아이디로 로그인 시 사용자 정보 db에 넣기
	@RequestMapping("naverLogin.me")
	public String naverLogin(String userId, String userName, String nickName, String birthDay, String email, Model model) {
		String birthday = birthDay.replace("-","");

		User user = new User();
		user.setUserId(userId);
		user.setUserName(userName);
		user.setNickName(nickName);
		user.setBirthday(birthday);
		user.setEmail(email);
		
		try {
			User loginUser = us.loginCheck(user);
			
			if(loginUser == null) {
				// 회원가입
				user.setAuthkey("Y");
				int result = us.insertUser(user);
				if(result > 0) {
					model.addAttribute("loginUser", loginUser);
					return "main";
				}else {
					model.addAttribute("msg","회원가입 실패");
					return "common/errorPage";
				}
			}else {
				// 세션에 저장
				model.addAttribute("loginUser", loginUser);
				return "main";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}
		
	// 로그아웃
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "main";
	}
	
	// 아이디/비밀번호 찾기 보여주기
	@RequestMapping("searchIdPwd.me")
	public String searchIdPwd() {
		return "user/searchIdPwd";
	}
	
	// 아이디 찾기를 위한 이메일 인증번호 전송
	@RequestMapping("confirmForId.me")
	public ModelAndView confirmForId(String userName, String email, ModelAndView mv) {
		Map map = new HashMap();
		
		User user = new User();
		user.setUserName(userName);
		user.setEmail(email);
		
		try {
			User searchUser = us.searchId(user);
			
			if(searchUser != null) {
				map.put("existId", true);
				
				String str = "";
				for(int i = 0; i < 6; i++) {
					int num = (int)(Math.random() * 10);
					str += num;
				}
				us.confirmForIdPwd(str, email);
				map.put("str", str);
			}else {
				map.put("existId", false);
			}			
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
		} catch (Exception e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 사용자 아이디 출력
	@RequestMapping("searchId.me")
	public String searchId(User user, Model model) {
		try {
			User searchUser = us.searchId(user);
			
			model.addAttribute("userId", searchUser.getUserId());
			return "user/resultId";
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}		
	}
	
	// 비밀번호 찾기를 위한 이메일 인증번호 전송
	@RequestMapping("confirmForPwd.me")
	public ModelAndView confirmForPwd(String userId, String email, ModelAndView mv) {
		Map map = new HashMap();
		
		User user = new User();
		user.setUserId(userId);
		user.setEmail(email);
		
		try {
			User searchUser = us.searchPwd(user);
			
			if(searchUser != null) {
				if(searchUser.getUserId().contains("@naver.com")) {
					map.put("naverId", true);
				}else {
					map.put("existId", true);
					
					String str = "";
					for(int i = 0; i < 6; i++) {
						int num = (int)(Math.random() * 10);
						str += num;
					}
					us.confirmForIdPwd(str, email);
					map.put("str", str);
				}				
			}else {
				map.put("existId", false);
			}			
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
		} catch (Exception e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 사용자 비밀번호 바꾸기 화면으로 이동
	@RequestMapping("searchPwd.me")
	public String searchPwd(String userId, Model model) {	
		model.addAttribute("userId", userId);
		return "user/changePwd";	
	}
	
	// 비밀번호 변경
	@RequestMapping("updatePwd.me")
	public String updatePwd(User user, Model model) {		
		String encPassword = passwordEncoder.encode(user.getUserPwd());		
		user.setUserPwd(encPassword);
		
		int result = us.updatePwd(user);
		
		if(result > 0) {
			return "user/completeNewPwd";
		}else {
			model.addAttribute("msg","비밀번호 변경 실패");
			return "common/errorPage";
		}
	}
	
	// 회원정보 수정
	@RequestMapping("updateUser.me")
	public String updateUser(User user, Model model, HttpServletRequest request, String beforePhotoOr,
			String beforePhotoCh, @RequestParam(name="photo", required=false) MultipartFile photo) {			
		String originFileName = photo.getOriginalFilename();
		
		if(originFileName != "") {
			String root = request.getSession().getServletContext().getRealPath("resources");		
			String filePath = root + "\\profileImg";
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			
			try {
				// 전에 이클립스에 있던 사진 삭제
				if(beforePhotoCh != "") {
					new File(filePath + "\\" + beforePhotoCh).delete();
				}
				photo.transferTo(new File(filePath + "\\" + changeName + ext));
				
				user.setOriginName(originFileName);
				user.setChangeName(changeName + ext);		
			}catch(Exception e) {
				new File(filePath + "\\" + changeName + ext).delete();
				model.addAttribute("msg", "파일 등록 실패!");
				return "common/errorPage";
			}
		}else if(beforePhotoOr != "" && beforePhotoCh != "") {
			user.setOriginName(beforePhotoOr);
			user.setChangeName(beforePhotoCh);
		}
		
		if(user.getUserPwd() != null) {
			String encPassword = passwordEncoder.encode(user.getUserPwd());		
			user.setUserPwd(encPassword);
		}else {
			user.setUserPwd(null);
		}
		
		int result = us.updateUser(user);
		
		if(result > 0) {
			try {
				User loginUser = us.loginCheck(user);
				
				model.addAttribute("loginUser", loginUser);
				return "myPage/myPage";
			} catch (Exception e) {
				model.addAttribute("msg", e.getMessage());
				return "common/errorPage";
			}		
		}else {
			model.addAttribute("msg","회원정보 수정 실패");
			return "common/errorPage";
		}
	}
	
	// 탈퇴 버튼 클릭 시 비밀번호 한번 더 입력하는 페이지로 이동
	@RequestMapping("deleteBefore.me")
	public String deleteBefore() {
		return "user/delete_before";
	}
	
	// 회원 탈퇴 메서드
	   @RequestMapping("deleteUser.me")
	   public String deleteUser(HttpSession session, Model model, SessionStatus status) {
	      User loginUser = (User)session.getAttribute("loginUser");
	      int result = us.deleteUser(loginUser.getUserId());
	      
	      if(result > 0) {
	         status.setComplete();
	         return "user/delete_after";
	      }else {
	         model.addAttribute("msg", "회원정보 삭제 실패");
	         return "common/errorPage";
	      }
	   }
}
