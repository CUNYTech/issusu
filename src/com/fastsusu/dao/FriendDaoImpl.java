package com.fastsusu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.fastsusu.model.Friend;

@Repository
public class FriendDaoImpl extends AbstractDao<Integer, Friend> implements FriendDao {

	private static final Logger logger = LoggerFactory.getLogger(FriendDaoImpl.class);

	@Override
	public Friend findById(int friendId) {
		return getByKey(friendId);
	}

	@Override
	public void save(Friend friend) {
		persist(friend);

	}

	@Override
	public List<Friend> findUserFriends(String userName) {
		logger.info("User Name : {}", userName);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userName", userName));
		@SuppressWarnings("unchecked")
		List<Friend> friends = (List<Friend>) crit.list();
		return friends;
	}

}
