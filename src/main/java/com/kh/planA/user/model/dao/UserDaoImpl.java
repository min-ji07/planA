package com.kh.planA.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.planA.user.model.vo.User;

@Repository
public class UserDaoImpl implements UserDao{

	@Override
	public int duplicationCheck(SqlSessionTemplate sqlSession, String id) throws Exception{
		return sqlSession.selectOne("User.duplicationCheck", id);
	}

	@Override
	public int insertUser(SqlSessionTemplate sqlSession, User user) {
		return sqlSession.insert("User.insertUser", user);
	}

	@Override
	public int updateAuthkey(SqlSessionTemplate sqlSession, User user) {
		return sqlSession.update("User.updateAuthkey", user);
	}

	@Override
	public int confirmAuthkey(SqlSessionTemplate sqlSession, User user) {
		return sqlSession.update("User.confirmAuthkey", user);
	}

	@Override
	public User loginCheck(SqlSessionTemplate sqlSession, User user) throws Exception {
		return sqlSession.selectOne("User.loginCheck", user);
	}

	@Override
	public User searchId(SqlSessionTemplate sqlSession, User user) throws Exception {
		return sqlSession.selectOne("User.searchId", user);
	}

	@Override
	public User searchPwd(SqlSessionTemplate sqlSession, User user) throws Exception {
		return sqlSession.selectOne("User.searchPwd", user);
	}

	@Override
	public int updatePwd(SqlSessionTemplate sqlSession, User user) {
		return sqlSession.update("User.updatePwd", user);
	}

	@Override
	public int updateUser(SqlSessionTemplate sqlSession, User user) {
		return sqlSession.update("User.updateUser", user);
	}

	@Override
	public int deleteUser(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.delete("User.deleteUser", userId);
	}
}
