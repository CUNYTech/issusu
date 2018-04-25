/**
 * 
 */
package com.fastsusu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fastsusu.model.UserGroupMapping;

/**
 * @author R
 *
 */
@Repository
public class UserGroupMappingDaoImpl extends AbstractDao<Integer, UserGroupMapping> implements UserGroupMappingDao {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.fastsusu.dao.UserGroupMappingDao#save(com.fastsusu.model.
	 * UserGroupMapping)
	 */
	@Override
	public void save(UserGroupMapping userGroupMapping) {
		persist(userGroupMapping);
	}

	@Override
	public int findAGroupCount(int groupId) {
		Criteria criteria = createEntityCriteria();
		criteria.setProjection(Projections.countDistinct("groupId"));
		criteria.add(Restrictions.eq("groupId", groupId));
		Long count = (Long)criteria.uniqueResult();
		return count.intValue();
	}
	
	@Override
	public List<UserGroupMapping> findGroupUsers(int groupId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("groupId", groupId));
		@SuppressWarnings("unchecked")
		List<UserGroupMapping> userGroups = (List<UserGroupMapping>)criteria.list();
		return userGroups;
	}
}
