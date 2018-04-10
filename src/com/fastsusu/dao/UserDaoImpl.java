package com.fastsusu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.fastsusu.model.CrmUser;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<String, CrmUser> implements UserDao {

	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

	@Override
	public CrmUser findByName(String userName) {
		logger.info("userName : {}", userName);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userName", userName));
		CrmUser user = (CrmUser) crit.uniqueResult();
		return user;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<CrmUser> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("userName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<CrmUser> users = (List<CrmUser>) criteria.list();
		return users;
	}

	@Override
	public void save(CrmUser user) {
		persist(user);
	}

	@Override
	public void deleteByName(String userName) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userName", userName));
		CrmUser user = (CrmUser) crit.uniqueResult();
		delete(user);

	}

}
