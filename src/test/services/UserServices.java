package test.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.dao.UserDao;
import test.entity.User;

@Service
public class UserServices {
	@Autowired
	private UserDao userDao;

	// 各个业务
	public boolean isUserExist(String username) {
		if (userDao.findUsersByUsername(username) == null) {
			return false;
		} else {
			return true;
		}
	}

	public String getPasswordByUsername(String username) {
		return userDao.findUsersByUsername(username).getPassword();
	}

	public void addUser(String username, String password) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		userDao.addUser(user);
	}
  
	public void modifyPasswordByUsername(String username, String newpassword) {
		User user = userDao.findUsersByUsername(username);
		user.setUsername(username);
		user.setPassword(newpassword);
		userDao.modifyPasswordByUsername(user);
	}
}
