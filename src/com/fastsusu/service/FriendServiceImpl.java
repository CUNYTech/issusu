package com.fastsusu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fastsusu.dao.FriendDao;
import com.fastsusu.model.Friend;

@Service
@Transactional
public class FriendServiceImpl implements FriendService {

	@Autowired
	private FriendDao friendDao;

	@Override
	public Friend findById(int friendId) {
		return friendDao.findById(friendId);
	}

	@Override
	public void save(Friend friend) {
		friendDao.save(friend);
	}

	@Override
	public List<Friend> findUserFriends(String userName) {
		return friendDao.findUserFriends(userName);
	}

	@Override
	public void delete(int friendId) {
		friendDao.delete(friendId);
	}

}
