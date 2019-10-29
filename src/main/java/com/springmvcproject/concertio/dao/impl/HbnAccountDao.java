package com.springmvcproject.concertio.dao.impl;
import javax.inject.Inject;
import javax.sql.DataSource;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvcproject.concertio.dao.AccountDao;
import com.springmvcproject.concertio.models.Account;

@Repository("accountDao")
public class HbnAccountDao extends AbstractHbnDao<Account> 
	implements AccountDao {
	
	private static final String UPDATE_PASSWORD_SQL = 
		"update account set password = ? where email = ?";

	
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
	    return jdbcTemplate;
	}

	@Autowired
	public void setJdbcTemplate(final DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void create(Account account, String password) {
		create(account);
		System.out.println("Hello world");
		jdbcTemplate.update(
			UPDATE_PASSWORD_SQL, password, account.getEmail()
		);
	}

	@SuppressWarnings({ "deprecation", "rawtypes" })
	@Override
	public Account findAccountByEmail(String email) {
		Query q = getSession().getNamedQuery("findAccountByEmail");
		q.setParameter("email", email);
		return (Account) q.uniqueResult();
	}

}
