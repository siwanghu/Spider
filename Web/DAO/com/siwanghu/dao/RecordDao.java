package com.siwanghu.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.siwanghu.bean.Record;
import com.siwanghu.utils.JdbcUtils;

public class RecordDao {
	private QueryRunner runner;

	public RecordDao() {
		runner = new QueryRunner(JdbcUtils.getDataSource());
	}

	public void add(Record record) throws SQLException {
		String sql = "insert into record(name,unit,time,amount) values(?,?,?,?)";
		Object params[] = { record.getName(), record.getUnit(),
				record.getTime(), record.getAmount() };
		runner.update(sql, params);
	}

	public List<Record> find(String keyword) throws SQLException {
		String sql = "select * from record where name like ? or unit like ? or time like ? or amount like ?";
		Object params[] = { "%" + keyword + "%", "%" + keyword + "%",
				"%" + keyword + "%", "%" + keyword + "%" };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}
	
	public List<Record> findById(int id) throws SQLException {
		String sql = "select * from record where id=?";
		Object params[] = { id };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> findByName(String name) throws SQLException {
		String sql = "select * from record where name=?";
		Object params[] = { name };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> findbyUnit(String unit) throws SQLException {
		String sql = "select * from record where unit=?";
		Object params[] = { unit };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> findbyTime(String time) throws SQLException {
		String sql = "select * from record where time=?";
		Object params[] = { time };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> findbyMoney(String money) throws SQLException {
		String sql = "select * from record where amount=?";
		Object params[] = { money };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> getPage(int start, int count) throws SQLException {
		String sql = "select * from record limit ?,?";
		Object params[] = { start, count };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}

	public List<Record> getAll() throws SQLException {
		String sql = "select * from record";
		return (List<Record>) runner.query(sql, new BeanListHandler(
				Record.class));
	}

	public List<Record> getAll(Long id) throws SQLException {
		String sql = "select * from record where id> ?";
		Object params[] = { id };
		return (List<Record>) runner.query(sql, params, new BeanListHandler(
				Record.class));
	}
	
	public void exportRecord(String fileName) throws SQLException{
		String sql="select * from record into outfile ?";
		Object params[] = { fileName };
		runner.query(sql,params,new ResultSetHandler(){
			@Override
			public Object handle(ResultSet rs) throws SQLException {
				return null;
			}
		});
	}

	public Long getSize() throws SQLException {
		String sql = "select count(*) from record";
		return runner.query(sql, new ResultSetHandler() {
			@Override
			public Object handle(ResultSet rs) throws SQLException {
				Long size = (long) 0;
				while(rs.next()){
					size=(Long) rs.getObject("count(*)");
				}
				return size;
			}
		});
	}
}
