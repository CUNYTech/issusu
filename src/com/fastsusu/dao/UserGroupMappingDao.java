package com.fastsusu.dao;

import java.util.List;

import com.fastsusu.model.UserGroupMapping;

public interface UserGroupMappingDao {

	void save(UserGroupMapping userGroupMapping);
	
	int findAGroupCount(int groupId);
	
	List<UserGroupMapping> findGroupUsers(int groupId);
}
