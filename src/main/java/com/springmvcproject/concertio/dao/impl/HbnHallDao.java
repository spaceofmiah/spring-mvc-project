package com.springmvcproject.concertio.dao.impl;

import java.util.List;

import javax.persistence.Query;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvcproject.concertio.dao.HallDao;
import com.springmvcproject.concertio.models.Hall;
import com.springmvcproject.concertio.models.Image;


@Transactional
@Repository("hallDao")
public class HbnHallDao extends AbstractHbnDao<Hall>  implements HallDao {
	
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
	    return jdbcTemplate;
	}
	
	@Autowired
	public void setJdbcTemplate(final DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void createHall(Hall hall, Image img) {
		hall.addToImage(img);
		create(hall);
	}

	@Override
	public Hall findHallByName(String name) {
		Query query = getSession().getNamedQuery("findHallByName");
		query.setParameter("name", name);
		return (Hall)query.getResultList();
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public List<Hall> getAllImages(Integer id) {
		Query query = getSession().getNamedQuery("getAllImages");
		query.setParameter("id", id);
		return query.getResultList();
	}

}
