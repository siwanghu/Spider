package com.siwanghu.bean;

public class WebSite {
	private String uuid; // id
	private String province;// 省份
	private String city; // 市级
	private String url; // 网址

	public WebSite() {
		super();
	}

	public WebSite(String uuid, String province, String city, String url) {
		super();
		this.uuid = uuid;
		this.province = province;
		this.city = city;
		this.url = url;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
