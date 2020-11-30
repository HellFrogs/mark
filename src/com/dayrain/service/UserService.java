package com.dayrain.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.dayrain.Dao.StudentDao;
import com.dayrain.Dao.UserDao;
import com.dayrain.entity.User;
import com.dayrain.utils.DBUtils;

public class UserService {
	
	/**
	 * 登录校验
	 * @param user 用户
	 * @return 是否登录成功
	 */
	public User loginCheck(String username, String password) {
		UserDao userDao = new UserDao();
		
		User userRes = userDao.getUserByUserNameAndPassword(username, password);
		
		return userRes;
	}
	
}
