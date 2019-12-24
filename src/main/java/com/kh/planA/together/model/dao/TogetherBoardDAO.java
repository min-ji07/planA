package com.kh.planA.together.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.planA.together.model.vo.PageInfo;
import com.kh.planA.together.model.vo.Reply;
import com.kh.planA.together.model.vo.TogetherBoard;

@Repository("tbDAO")
public class TogetherBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int getListCount() {
		
		return sqlSession.selectOne("TogetherBoardMapper.getListCount");
	}

	public ArrayList<TogetherBoard> selectList() {
	
		return (ArrayList)sqlSession.selectList("TogetherBoardMapper.selectList");
	}

	public TogetherBoard selectTogetherBoard(int tId) {
		System.out.println(tId);
		return sqlSession.selectOne("TogetherBoardMapper.selectTogetherBoard",tId);
	}

	public int insertBoard(TogetherBoard tb) {
		
		return sqlSession.insert("TogetherBoardMapper.insertBoard", tb);
	}


	public TogetherBoard tboardUpdateView(int tId) {
		
		return sqlSession.selectOne("TogetherBoardMapper.selectTogetherBoard",tId);
	}

	public int updateBoard(TogetherBoard tb) {
		
		//System.out.println("다오넘어가니?");
		return sqlSession.update("TogetherBoardMapper.updateBoard", tb);
	}

	public int deleteBoard(TogetherBoard tb) {
		sqlSession.delete("TogetherBoardMapper.deleteReply",tb);
		return sqlSession.delete("TogetherBoardMapper.deleteBoard", tb);
	}

	public int getSelectListCount(String selected) {
		//System.out.println("다오넘어?"+selected);
		return sqlSession.selectOne("TogetherBoardMapper.selectMyListCount", selected);
	}
	
/*	
	// 국가, 도시 선택해서 검색
	public ArrayList<TogetherBoard> selectMy(String selected) {
		//System.out.println("다오넘어?");
		return (ArrayList)sqlSession.selectList("TogetherBoardMapper.selectMy", selected);
	}
*/

	
	
	public ArrayList<TogetherBoard> selectPageList(PageInfo pi) {
	
		// 몇개를 띄어 넘을건지!
				int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
				// 그리고 몇개 가져올건데? -> pi.getBoardLimit() / BoardLimit : 한페이지에 보이는 글 갯수
				RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
				//System.out.println("다오넘어가니?ㅜㅜ");
				return (ArrayList)sqlSession.selectList("TogetherBoardMapper.selectPageList", null, rowBounds);
																						// rowBounds를 가지고 페이징 처리해줘~
			
	}
/* 검색+페이징처리
	public ArrayList<TogetherBoard> selectMy(PageInfo pi, String selected) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 그리고 몇개 가져올건데? -> pi.getBoardLimit() / BoardLimit : 한페이지에 보이는 글 갯수
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		System.out.println("다오넘어가니?ㅜㅜ페이징처리");
		return (ArrayList)sqlSession.selectList("TogetherBoardMapper.selectMy", null, rowBounds);
																				// rowBounds를 가지고 페이징 처리해줘~
	}
*/
	

	


	  //댓글 리스트
	  public ArrayList<Reply> selectReplyList(int tId) {
		 // System.out.println("댓글 리스트뽑는거 다오넘어?");
		  return(ArrayList)sqlSession.selectList("TogetherBoardMapper.selectReplyList", tId);
	  }
	  
	  // 댓글 추가 
	  public int insertReply(Reply r) {
		//  System.out.println("댓글 추가하는거 다오넘어?");
	  return sqlSession.insert("TogetherBoardMapper.insertReply",r); 
	  }

	 //다원이가 알려준거
	public ArrayList<TogetherBoard> selectMy(String selected, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("TogetherBoardMapper.selectMy", selected, rowBounds);
	}


}
