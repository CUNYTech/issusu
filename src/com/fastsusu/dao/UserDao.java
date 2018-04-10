package com.fastsusu.dao;

import java.util.List;

import com.fastsusu.model.CrmUser;

public interface UserDao {

	CrmUser findByName(String name);

	void save(CrmUser user);

	void deleteByName(String name);

	List<CrmUser> findAllUsers();

}
