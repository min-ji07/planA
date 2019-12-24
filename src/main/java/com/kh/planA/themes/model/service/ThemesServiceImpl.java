package com.kh.planA.themes.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.themes.model.dao.ThemesDao;
import com.kh.planA.themes.model.vo.Theme;
@Service("tService")
public class ThemesServiceImpl implements ThemesService {

	@Autowired
	private ThemesDao tDAO;

	@Override
	public int getListCount() {
		return tDAO.getListCount();
	}

	@Override
	public ArrayList<Theme> selectList() {
		return tDAO.selectList();
	}

	@Override
	public Theme selectTheme(int tseq) {
		return tDAO.selectTheme(tseq);
	}

	@Override
	public ArrayList<Theme> tCheckListSave(String checked) {
		return tDAO.tCheckListSave(checked);
	}

	@Override
	public int getCheckListCount(String checked) {
		return tDAO.getCheckListCount(checked);
	}

	@Override
	public int insertTheme(RouteResult routeResult) {
		
		return tDAO.insertTheme(routeResult);
	}


	


}
