package test.dao;


import org.springframework.stereotype.Repository;

import test.entity.User;

@Repository
public interface UserDao {
	public User findUsersByUsername(String username);
	public int addUser(User user);
	public int modifyPasswordByUsername(User user);
}
