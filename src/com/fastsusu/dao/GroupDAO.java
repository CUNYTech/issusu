package com.fastsusu.dao;

import java.util.List;

import com.fastsusu.model.Group;

public interface GroupDAO {

	Group findById(int id);

	Group findByName(String name);

	void save(Group group);

	List<Group> findAllGroups();
	
	List<Group> findUserGroups(String username);
	
	List<Group> findNotAssociatedGroups(String username);
}
