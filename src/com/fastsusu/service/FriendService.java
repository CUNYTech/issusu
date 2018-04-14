package com.fastsusu.service;

import java.util.List;

import com.fastsusu.model.Friend;

public interface FriendService {

	Friend findById(int friendId);

	void save(Friend friend);

	List<Friend> findUserFriends(String userName);
}
