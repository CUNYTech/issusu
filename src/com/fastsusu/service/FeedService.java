package com.fastsusu.service;

import java.util.List;

import com.fastsusu.model.Feeds;

public interface FeedService {

	Feeds findById(int id);

	void save(Feeds feeds);

	List<Feeds> findAllFeeds();

	List<Feeds> findUserFeeds(String userName);
}
