package com.kh.planA.themes.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.themes.model.vo.Theme;

@Repository("tDAO")
public class ThemesDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		
		return sqlSession.selectOne("themesMapper.getListCount");
	}

	public ArrayList<Theme> selectList() {
		return (ArrayList)sqlSession.selectList("themesMapper.selectList");
	}

	//디텔로드가는 DAO
	public Theme selectTheme(int tseq) {
		System.out.println(tseq);
		return sqlSession.selectOne("themesMapper.selectTheme",tseq);
	}
	
	//쳌박저장 DAO
	public ArrayList<Theme> tCheckListSave(String checked) {
		System.out.println("DAO : "+checked);
		
		return (ArrayList)sqlSession.selectList("themesMapper.checkedTheme",checked);
		
	}

	public int getCheckListCount(String checked) {
		
		return sqlSession.selectOne("themesMapper.checkListCount",checked);
	}

	public int insertTheme(RouteResult routeResult) {
		System.out.println("다오얌"+routeResult);
		return sqlSession.insert("themesMapper.insertTheme",routeResult);
	}
	

}
