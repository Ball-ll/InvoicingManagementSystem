package com.service.base;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.base.BaseDao;


public class BaseServiceImp<T> implements BaseService<T>{

	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	protected BaseDao<T> baseDao;

	
	public void insert(T o) {
		baseDao.insert(o);
	}

	public void delete(T o) {
		baseDao.delete(o);
	}
	
	public void deleteBatch(List<T> os){
		baseDao.deleteBatch(os);
	}

	
	public void update(T o) {
		baseDao.update(o);
	}

	
	public List<T> find(T o) {
		return baseDao.find(o);
	}	
	public int count(T o) {
		return baseDao.count(o);
	}
}
