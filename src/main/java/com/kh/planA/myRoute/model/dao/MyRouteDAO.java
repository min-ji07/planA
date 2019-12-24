package com.kh.planA.myRoute.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.planA.myRoute.model.vo.City;
import com.kh.planA.myRoute.model.vo.MyRoute;
import com.kh.planA.myRoute.model.vo.RoutePlan;
import com.kh.planA.myRoute.model.vo.RouteResult;

@Repository
public class MyRouteDAO {

	public City myPlan(SqlSessionTemplate sqlSession, RoutePlan rp) {
		
		return sqlSession.selectOne("city.countryCity",rp);
	}

	public RouteResult RetueResult(SqlSessionTemplate sqlSession, MyRoute myRoute) {
		int insertOK = 0;
		RouteResult RotueResult =null;
		RotueResult = sqlSession.selectOne("city.selectOneMyRoute",myRoute);
		System.out.println("DAO 검색 : "+ RotueResult);
		if(RotueResult == null) {
			System.out.println("널값이면"+RotueResult);
			insertOK = sqlSession.insert("city.insertmyRoute",myRoute);
			if(insertOK  != 0) {
				RotueResult = sqlSession.selectOne("city.selectOneMyRoute",myRoute);
				System.out.println("DAO 저장된값 호출 : "+RotueResult);
				return RotueResult;
			}
		}else {
			return RotueResult;
		}
		
		return null;
	}

	// 마이페이지 지도 값 가져오기
	   public ArrayList<RouteResult> myHistory(SqlSessionTemplate sqlSession, String userId) {
	      System.out.println("DAO에 userId : " + userId + " 가 도착!");
	      return (ArrayList)sqlSession.selectList("myPageMapper.myHistory", userId);
	   }
	
}
