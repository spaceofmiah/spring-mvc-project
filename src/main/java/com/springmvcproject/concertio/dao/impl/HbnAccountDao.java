package com.springmvcproject.concertio.dao.impl;


import java.util.List;



import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvcproject.concertio.dao.AccountDao;
import com.springmvcproject.concertio.models.Account;
import com.springmvcproject.concertio.models.Role;


@Transactional
@Repository("accountDao")
public class HbnAccountDao extends AbstractHbnDao<Account>  implements AccountDao {
	
	@Autowired PasswordEncoder passwordEncoder;	
	
	@Override
	public void createAccount(Account account) {
		account.setPassword(passwordEncoder.encode(account.getPassword()));
		create(account);
	}

	@SuppressWarnings({ "deprecation", "rawtypes" })
	@Override
	public Account findAccountByEmail(String email) {
		Query q = getSession().getNamedQuery("findAccountByEmail");
		q.setParameter("email", email);
		return (Account) q.uniqueResult();
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Role> getAllRoles(Account account) {
		Query q = getSession().getNamedQuery("getAllRoles");
		q.setParameter("email", account.getEmail());
		return q.getResultList();
	}
	
}
