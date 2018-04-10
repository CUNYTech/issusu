package com.fastsusu.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.fastsusu.model.Group;

@Repository("groupDAO")
public class GroupDAOImpl extends AbstractDao<Integer, Group> implements GroupDAO {

	static final Logger logger = LoggerFactory.getLogger(GroupDAOImpl.class);

	@Override
	public Group findById(int id) {
		Group group = getByKey(id);
		return group;
	}

	@Override
	public Group findByName(String name) {
		logger.info("Group Name : {}", name);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("groupName", name));
		Group group = (Group) crit.uniqueResult();
		return group;
	}

	@Override
	public void save(Group group) {
		persist(group);

	}

	@Override
	public List<Group> findAllGroups() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("groupName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		@SuppressWarnings("unchecked")
		List<Group> groups = (List<Group>) criteria.list();
		return groups;
	}

	@Override
	public List<Group> findUserGroups(String username) {
		String queryString = "from Group gp, CrmUser user, UserGroupMapping usermapping where gp.id=usermapping.groupId";
		queryString += " AND user.userName=usermapping.userName AND usermapping.userName=:username Order by gp.groupName";
		Query query = getSession().createQuery(queryString);
		query.setString("username", username);

		List<Group> groups = new ArrayList<Group>();
		@SuppressWarnings("unchecked")
		List<Object[]> rows = query.list();
		for (Object[] objects : rows) {
			Group group = (Group) objects[0];
			groups.add(group);
		}
		return groups;
	}
	
	@Override
	public List<Group> findNotAssociatedGroups(String username) {
		String queryString = "Select gp.id from Group gp, CrmUser user, UserGroupMapping usermapping where gp.id=usermapping.groupId";
		queryString += " AND user.userName=usermapping.userName AND usermapping.userName=:username";
		queryString += " AND gp.groupSize >= (Select Count(usermapping.groupId) from UserGroupMapping usermapping where usermapping.userName=:username)";
		
		String notinQueryString = "from Group gp";
		notinQueryString += " where gp.id NOT IN("+ queryString +")";
		Query query = getSession().createQuery(notinQueryString);
		query.setString("username", username);

		@SuppressWarnings("unchecked")
		List<Group> groups = (List<Group>)query.list();
		return groups;
	}

}
