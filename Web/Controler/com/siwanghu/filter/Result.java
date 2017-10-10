package com.siwanghu.filter;

import java.util.ArrayList;
import java.util.List;

import com.siwanghu.bean.Record;

public class Result {
	private static List<Record> list=new ArrayList<Record>();
	
	public static List<Record> getResult(){
		return list;
	}
	
	public static void setResult(List<Record> result){
		list=result;
	}
	
	public static void flush(){
		list.clear();;
		System.gc();
	}
}
