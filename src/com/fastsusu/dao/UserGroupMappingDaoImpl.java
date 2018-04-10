/**
 * 
 */
package com.fastsusu.dao;

import org.springframework.stereotype.Repository;

import com.fastsusu.model.UserGroupMapping;

/**
 * @author R
 *
 */
@Repository
public class UserGroupMappingDaoImpl extends AbstractDao<Integer, UserGroupMapping> implements UserGroupMappingDao {

	/* (non-Javadoc)
	 * @see com.fastsusu.dao.UserGroupMappingDao#save(com.fastsusu.model.UserGroupMapping)
	 */
	@Override
	public void save(UserGroupMapping userGroupMapping) {
		persist(userGroupMapping);
	}

}
