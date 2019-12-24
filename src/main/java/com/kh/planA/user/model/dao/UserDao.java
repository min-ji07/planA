package com.kh.planA.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.planA.user.model.vo.User;

public interface UserDao {
	// 아이디 중복확인 메서드
	int duplicationCheck(SqlSessionTemplate sqlSession, String id) throws Exception;

	// 회원가입 메서드
	int insertUser(SqlSessionTemplate sqlSession, User user);

	// 이메일 인증 키 업데이트 메서드
	int updateAuthkey(SqlSessionTemplate sqlSession, User user);

	// 이메일 인증 확인 완료 메서드
	int confirmAuthkey(SqlSessionTemplate sqlSession, User user);
	
	// 로그인 메서드
	User loginCheck(SqlSessionTemplate sqlSession, User user) throws Exception;

	// 아이디 찾기 메서드
	User searchId(SqlSessionTemplate sqlSession, User user) throws Exception;

	// 비밀번호 찾기 메서드
	User searchPwd(SqlSessionTemplate sqlSession, User user) throws Exception;

	// 비밀번호 변경 메서드
	int updatePwd(SqlSessionTemplate sqlSession, User user);

	// 회원정보 수정 메서드
	int updateUser(SqlSessionTemplate sqlSession, User user);

	// 회원정보 삭제 메서드
	int deleteUser(SqlSessionTemplate sqlSession, String userId);
}
