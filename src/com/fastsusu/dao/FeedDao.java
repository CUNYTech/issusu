package com.fastsusu.dao;

import java.util.List;

import com.fastsusu.model.Feeds;

public interface FeedDao {

	Feeds findById(int id);

	void save(Feeds feeds);

	List<Feeds> findAllFeeds();

	List<Feeds> findUserFeeds(String userName);
}
