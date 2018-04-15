package com.fastsusu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.fastsusu.model.Feeds;

@Repository
public class FeedDaoImpl extends AbstractDao<Integer, Feeds> implements FeedDao {

	private static final Logger logger = LoggerFactory.getLogger(FeedDaoImpl.class);

	@Override
	public Feeds findById(int id) {
		Feeds feeds = getByKey(id);
		return feeds;
	}

	@Override
	public void save(Feeds feeds) {
		persist(feeds);

	}

	@Override
	public List<Feeds> findAllFeeds() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("userName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		@SuppressWarnings("unchecked")
		List<Feeds> groups = (List<Feeds>) criteria.list();
		return groups;
	}

	@Override
	public List<Feeds> findUserFeeds(String userName) {
		logger.info("User Name : {}", userName);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userName", userName));
		@SuppressWarnings("unchecked")
		List<Feeds> feeds = (List<Feeds>) crit.list();
		return feeds;
	}

}
