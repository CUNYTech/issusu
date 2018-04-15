package com.fastsusu.dao;

import java.util.List;

import com.fastsusu.model.Friend;

public interface FriendDao {

	Friend findById(int friendId);

	void save(Friend friend);

	List<Friend> findUserFriends(String userName);
	
	void delete(int friendId);
}
