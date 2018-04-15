package com.fastsusu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastsusu.dao.FeedDao;
import com.fastsusu.model.Feeds;

@Service
@Transactional
public class FeedServiceImpl implements FeedService {

	@Autowired
	private FeedDao feedDao;

	@Override
	public Feeds findById(int id) {
		return feedDao.findById(id);
	}

	@Override
	public void save(Feeds feeds) {
		feedDao.save(feeds);
	}

	@Override
	public List<Feeds> findAllFeeds() {
		return feedDao.findAllFeeds();
	}

	@Override
	public List<Feeds> findUserFeeds(String userName) {
		return feedDao.findUserFeeds(userName);
	}

}
