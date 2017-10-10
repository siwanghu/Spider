package com.siwanghu.bean;

public class User {
	private String uuid; // id
	private String account; // 账号
	private String password; // 密码
	private int gender; // 性别 0代表女 1代表男
	private String userType; // 用户类型
	private String phone; // 电话号码
	private String email; // 电子邮箱
	private String note; // 备注

	public User() {
		super();
	}

	public User(String uuid, String account, String password, int gender,
			String userType, String phone, String emil, String note) {
		super();
		this.uuid = uuid;
		this.account = account;
		this.password = password;
		this.gender = gender;
		this.userType = userType;
		this.phone = phone;
		this.email = emil;
		this.note = note;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
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

	public void setEmail(String emil) {
		this.email = emil;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
