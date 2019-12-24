package com.kh.planA.together.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.together.model.dao.TogetherBoardDAO;
import com.kh.planA.together.model.vo.PageInfo;
import com.kh.planA.together.model.vo.Reply;
import com.kh.planA.together.model.vo.TogetherBoard;

@Service("tbService")
public class TogetherBoardServiceImpl implements TogetherBoardService{

	
	@Autowired
	private TogetherBoardDAO tbDAO;

	@Override
	public int getListCount() {
		
		return tbDAO.getListCount();
	}

	@Override
	public ArrayList<TogetherBoard> selectList() {
		
		return tbDAO.selectList();
	}

	@Override
	public TogetherBoard selectTogetherBoard(int tId) {
		return tbDAO.selectTogetherBoard(tId);
	}

	@Override
	public int insertBoard(TogetherBoard tb) {
	
		return tbDAO.insertBoard(tb);
	}

	@Override
	public int updateBoard(TogetherBoard tb) {
		
		System.out.println("서비스넘어가니?");
		return tbDAO.updateBoard(tb);
	}

	@Override
	public TogetherBoard tboardUpdateView(int tId) {
		
		return tbDAO.tboardUpdateView(tId);
	}

	@Override
	public int deleteBoard(TogetherBoard tb) {
		return tbDAO.deleteBoard(tb);
	}

	@Override
	public int getSelectListCount(String selected) {
		
		return tbDAO.getSelectListCount(selected);
	}

	/*
	 * @Override public ArrayList<TogetherBoard> selectMy(String selected) {
	 * 
	 * return tbDAO.selectMy(selected); }
	 */
	@Override
	public ArrayList<TogetherBoard> selectPageList(PageInfo pi) {
		
		return tbDAO.selectPageList(pi);
	}

/* 검색+페이징처리
	@Override
	public ArrayList<TogetherBoard> selectMy(PageInfo pi, String selected) {
	
		return tbDAO.selectMy(pi, selected);
	}
*/



	



	

	
	// 게시물 댓글 리스트
	
	@Override 
	public ArrayList<Reply> selectReplyList(int tId) { 
		
	return tbDAO.selectReplyList(tId); }
	
	// 댓글 추가
	
	@Override public int insertReply(Reply r) {
	
	return tbDAO.insertReply(r); }

	// 다원이가 알려준거
	@Override
	public ArrayList<TogetherBoard> selectMy(String selected, PageInfo pi) {
		
		return tbDAO.selectMy(selected,pi);
	}


}


