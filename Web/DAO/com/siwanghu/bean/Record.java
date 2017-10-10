package com.siwanghu.bean;

public class Record {
	private int id;      //id
	private String name; // 项目名称
	private String unit; // 中标单位
	private String time; // 中标时间
	private String amount; // 中标金额

	public Record() {
		super();
	}

	public Record(String name, String unit, String time, String amount) {
		super();
		this.name = name;
		this.unit = unit;
		this.time = time;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

}
