package com.fastsusu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fastsusu.dao.UserDao;
import com.fastsusu.model.CrmUser;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public CrmUser findByName(String userName) {
		return userDao.findByName(userName);
	}

	public void saveUser(CrmUser user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userDao.save(user);
	}

	public void deleteUserByName(String name) {
		userDao.deleteByName(name);
	}

	public List<CrmUser> findAllUsers() {
		return userDao.findAllUsers();
	}

	public boolean isUserNameUnique(String userName) {
		CrmUser user = findByName(userName);
		return user == null;
	}

}
