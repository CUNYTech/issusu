/**
 * 
 */
package com.fastsusu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fastsusu.dao.GroupDAO;
import com.fastsusu.dao.UserGroupMappingDao;
import com.fastsusu.model.Group;
import com.fastsusu.model.UserGroupMapping;

/**
 * @author R
 *
 */
@Service("groupService")
@Transactional
public class GroupServiceImpl implements GroupService {

	@Autowired
	private GroupDAO groupDAO;
	
	@Autowired
	private UserGroupMappingDao userGroupMappingDao;
	
	/* (non-Javadoc)
	 * @see com.fastsusu.service.GroupService#findById(int)
	 */
	@Override
	public Group findById(int id) {
		return groupDAO.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.fastsusu.service.GroupService#save(com.fastsusu.user.Group)
	 */
	@Override
	public void save(Group group, String userName) {
		groupDAO.save(group);
		
		UserGroupMapping userGroupMapping = new UserGroupMapping();
		userGroupMapping.setGroupId(group.getId());
		userGroupMapping.setUserName(userName);
		userGroupMappingDao.save(userGroupMapping);
	}

	@Override
	public Group findByName(String name) {
		return groupDAO.findByName(name);
	}
	
	@Override
	public List<Group> findUserGroups(String username) {
		return groupDAO.findUserGroups(username);
	}

	@Override
	public List<Group> findNotAssociatedGroups(String username) {
		return groupDAO.findNotAssociatedGroups(username);
	}

	@Override
	public void associateGroup(int groupId, String userName) {
		UserGroupMapping userGroupMapping = new UserGroupMapping();
		userGroupMapping.setGroupId(groupId);
		userGroupMapping.setUserName(userName);
		userGroupMappingDao.save(userGroupMapping);	
	}

}
