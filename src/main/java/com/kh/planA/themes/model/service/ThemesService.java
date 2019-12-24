package com.kh.planA.themes.model.service;

import java.util.ArrayList;

import com.kh.planA.myRoute.model.vo.RouteResult;
import com.kh.planA.themes.model.vo.Theme;

public interface ThemesService {

	int getListCount();

	ArrayList<Theme> selectList();

	Theme selectTheme(int tseq); //디테일 들어가기

	ArrayList<Theme> tCheckListSave(String checked); //쳌박저장 옮기기

	int getCheckListCount(String checked);// 쳌박 수

	int insertTheme(RouteResult routeResult);

	

	

}
