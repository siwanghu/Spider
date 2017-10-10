package com.siwanghu.service;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import com.siwanghu.bean.Record;
import com.siwanghu.dao.RecordDao;

public class RecordService {
	RecordDao recordDao;

	public RecordService() {
		recordDao = new RecordDao();
	}

	public List<Record> find(String keyword) throws SQLException {
		return recordDao.find(keyword);
	}
	
	public List<Record> findbyId(int id) throws SQLException{
		return recordDao.findById(id);
	}

	public List<Record> findbyName(String name) throws SQLException {
		return recordDao.findByName(name);
	}

	public List<Record> findbyUnit(String unit) throws SQLException {
		return recordDao.findbyUnit(unit);
	}

	public List<Record> findbyTime(String time) throws SQLException {
		return recordDao.findbyTime(time);
	}

	public List<Record> findbyMoney(String money) throws SQLException {
		return recordDao.findbyMoney(money);
	}

	public List<Record> getPage(int start, int count) throws SQLException {
		return recordDao.getPage(start, count);
	}

	public List<Record> getAll() throws SQLException {
		return recordDao.getAll();
	}

	public void exportRecord(String fileName) throws SQLException {
		recordDao.exportRecord(fileName);
	}
}
