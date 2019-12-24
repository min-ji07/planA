package com.kh.planA.user.model.service;

import com.kh.planA.user.model.vo.User;

public interface UserService {
	// 아이디 중복확인 메서드
	int duplicationCheck(String id) throws Exception;

	// 회원가입 메서드
	int insertUser(User user);

	// 이메일 전송 메서드
	void sendEmail(User user) throws Exception;

	// 이메일 인증 확인 완료 메서드
	int confirmAuthkey(User user);

	// 로그인 메서드
	User loginCheck(User user) throws Exception;

	// 아이디 찾기 메서드
	User searchId(User user) throws Exception;

	// 아이디를 찾기 위하여 이메일 인증하는 메서드
	void confirmForIdPwd(String str, String email) throws Exception;

	// 비밀번호 찾기 메서드
	User searchPwd(User user) throws Exception;

	// 비밀번호 변경 메서드
	int updatePwd(User user);

	// 회원정보 수정 메서드
	int updateUser(User user);

	// 회원정보 삭제 메서드
	int deleteUser(String userId);
}
