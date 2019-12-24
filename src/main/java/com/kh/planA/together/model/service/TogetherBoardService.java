package com.kh.planA.together.model.service;

import java.util.ArrayList;

import com.kh.planA.together.model.vo.PageInfo;
import com.kh.planA.together.model.vo.Reply;
import com.kh.planA.together.model.vo.TogetherBoard;

public interface TogetherBoardService {

	/*
	 * int insertTogetherBoard(TogetherBoard tb);
	 * 
	 * TogetherBoard selectTogetherBoard(int tId);
	 */

	int getListCount(); // 게시판 글 전체 검색할 때 필요함

	ArrayList<TogetherBoard> selectList(); // 게시판 글 전체 검색

	TogetherBoard selectTogetherBoard(int tId); // 게시판글 디테일

	int insertBoard(TogetherBoard tb);

	int updateBoard(TogetherBoard tb); // 게시판 수정하기

	TogetherBoard tboardUpdateView(int tId); // 게시판 tid에 맞는거 가져오기

	int deleteBoard(TogetherBoard tb);

	int getSelectListCount(String selected); // 국가도시

//	ArrayList<TogetherBoard> selectMy(String selected); 

	ArrayList<TogetherBoard> selectPageList(PageInfo pi); // 페이징 처리

//	ArrayList<TogetherBoard> selectMy(PageInfo pi, String selected); 이거 오류나 검색+페이징처리




	
	  ArrayList<Reply> selectReplyList(int tId); // 댓글 리스트
	 
	  int insertReply(Reply r); // 댓글 추가

	ArrayList<TogetherBoard> selectMy(String selected, PageInfo pi); //다원이가 알려준거
	

	
}
