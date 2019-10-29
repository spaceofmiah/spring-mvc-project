package com.springmvcproject.concertio.dao.impl;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ReflectionUtils;

import com.springmvcproject.concertio.dao.Dao;

public class AbstractHbnDao<T extends Object> implements Dao<T> {

	@Autowired
	private SessionFactory sessionFactory;
	private Class<T> modelClass;
	
	
	protected Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	
	@SuppressWarnings("unchecked")
	private Class<T> getModelClass() {
		if (this.modelClass == null) {
			ParameterizedType thisType = 
					(ParameterizedType) getClass().getGenericSuperclass();
			this.modelClass = 
					(Class<T>) thisType.getActualTypeArguments()[0];
		}
		return modelClass;
	}
	
	private String getModelClassName() {
		return getModelClass().getName();
	}
	
	@Override
	public void create(T t) {
		Method method = ReflectionUtils.findMethod(
				getModelClass(), "setDateCreated", 
				new Class[] {Date.class});
		if (method != null) {
			try {
				method.invoke(t, new Date());
			}
			catch(Exception e) {
				/* Ignore */
			}
		}
		getSession().save(t);		
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public T get(Serializable id) {
		return (T) getSession().get(getModelClass(), id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T load(Serializable id) {
		return (T) getSession().load(getModelClass(), id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAll() {
		return getSession().
			createQuery("from " + getModelClassName())
			.list();
	}

	@Override
	public void update(T t) {
		getSession().update(t);		
	}

	@Override
	public void delete(T t) {
		getSession().delete(t);
	}

	@Override
	public void deleteById(Serializable id) {
		delete(load(id));
	}

	@Override
	public void deleteAll() {
		getSession()
			.createQuery("delete " + getModelClassName())
			.executeUpdate();
	}

	@Override
	public long count() {
		return (Long) getSession()
			.createQuery("select count(*) from " + getModelClassName())
			.uniqueResult();
	}

	@Override
	public boolean exists(Serializable id) {
		return (get(id) != null);
	}

}
