package com.kh.planA.user.model.vo;

public class User {
	private int mid;
	private String userId;
	private String userPwd;
	private String userName;
	private String nickName;
	private String birthday;
	private String phone;
	private String email;
	private String originName;
	private String changeName;
	private String authkey;
	private String checkList;
	
	public User() {
		super();
	}

	public User(int mid, String userId, String userPwd, String userName, String nickName, String birthday, String phone,
			String email, String originName, String changeName, String authkey, String checkList) {
		super();
		this.mid = mid;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.originName = originName;
		this.changeName = changeName;
		this.authkey = authkey;
		this.checkList = checkList;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getAuthkey() {
		return authkey;
	}

	public void setAuthkey(String authkey) {
		this.authkey = authkey;
	}

	public String getCheckList() {
		return checkList;
	}

	public void setCheckList(String checkList) {
		this.checkList = checkList;
	}

	@Override
	public String toString() {
		return "User [mid=" + mid + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", birthday=" + birthday + ", phone=" + phone + ", email=" + email
				+ ", originName=" + originName + ", changeName=" + changeName + ", authkey=" + authkey + ", checkList="
				+ checkList + "]";
	}
}
