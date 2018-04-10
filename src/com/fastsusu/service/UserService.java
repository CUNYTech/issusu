package com.fastsusu.service;

import java.util.List;

import com.fastsusu.model.CrmUser;

public interface UserService {

	CrmUser findByName(String name);

	void saveUser(CrmUser user);

	void deleteUserByName(String name);

	List<CrmUser> findAllUsers();

	boolean isUserNameUnique(String name);

}