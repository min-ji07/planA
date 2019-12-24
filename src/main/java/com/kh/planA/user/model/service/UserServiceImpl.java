package com.kh.planA.user.model.service;

import javax.mail.MessagingException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kh.planA.user.model.dao.UserDao;
import com.kh.planA.user.model.vo.MailUtils;
import com.kh.planA.user.model.vo.TempKey;
import com.kh.planA.user.model.vo.User;

@Service("us")
public class UserServiceImpl implements UserService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private UserDao ud;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public int duplicationCheck(String id) throws Exception {
		return ud.duplicationCheck(sqlSession, id);
	}

	@Override
	public int insertUser(User user) {
		return ud.insertUser(sqlSession, user);
	}

	@Override
	public void sendEmail(User user) throws Exception{
		String authkey = new TempKey().getKey(20, false);
		user.setAuthkey(authkey);
		
		ud.updateAuthkey(sqlSession, user);
		
		MailUtils sendMail = new MailUtils(mailSender);
		
		sendMail.setSubject("[planA] 이메일 계정을 인증해주세요.");
		sendMail.setText(new StringBuffer().append("<h2>[planA 이메일 인증]</h2>")
				.append("안녕하세요 <b>" + user.getUserName() + "</b>님!<br><br>")
				.append("아래 링크를 클릭하시면 이메일 인증이 완료됩니다.<br><br>")
				.append("<a href='http://localhost:8686/planA/joinConfirm.me?userId=")
				.append(user.getUserId())
				.append("&authkey=")			
				.append(user.getAuthkey())
				.append("' target='_blank'>planA 이메일 인증하기</a>")
				.toString());
		sendMail.setFrom("planA", "planA 관리자");
		sendMail.setTo(user.getEmail());
		sendMail.send();
	}

	@Override
	public int confirmAuthkey(User user) {
		return ud.confirmAuthkey(sqlSession, user);
	}
	
	@Override
	public User loginCheck(User user) throws Exception {
		return ud.loginCheck(sqlSession, user);
	}

	@Override
	public User searchId(User user) throws Exception {
		return ud.searchId(sqlSession, user);
	}

	@Override
	public void confirmForIdPwd(String str, String email) throws Exception {	
		MailUtils sendMail = new MailUtils(mailSender);
		
		sendMail.setSubject("[planA] 아이디/비밀번호 찾기 이메일 인증번호입니다.");
		sendMail.setText(new StringBuffer().append("<h2>[planA 이메일 인증]</h2>")
				.append("안녕하세요 planA입니다. 인증번호는 <br><br>")
				.append("<font size='4'><b>"+ str +"</b></font> 입니다. 감사합니다. <br><br>")				
				.toString());
		sendMail.setFrom("planA", "planA 관리자");
		sendMail.setTo(email);
		sendMail.send();
	}

	@Override
	public User searchPwd(User user) throws Exception {
		return ud.searchPwd(sqlSession, user);
	}

	@Override
	public int updatePwd(User user) {
		return ud.updatePwd(sqlSession, user);
	}

	@Override
	public int updateUser(User user) {
		return ud.updateUser(sqlSession, user);
	}

	@Override
	public int deleteUser(String userId) {
		return ud.deleteUser(sqlSession, userId);
	}
}
