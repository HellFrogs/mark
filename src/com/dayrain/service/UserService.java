package com.dayrain.service;

import java.util.Date;
import java.util.List;

import com.dayrain.Dao.UserDao;
import com.dayrain.entity.Student;
import com.dayrain.entity.User;
import com.dayrain.utils.EncryptUtils;

public class UserService {
	
	/**
	 * 登录校验
	 * @param user 用户
	 * @return 是否登录成功
	 */
	public User loginCheck(String username, String password) {
		UserDao userDao = new UserDao();
		
		User userRes = userDao.getUserByUserNameAndPassword(username, EncryptUtils.MD5Encode(password));
		
		return userRes;
	}
	
	
	public List<User> getUserList() {
		UserDao userDao = new UserDao();
		return userDao.getUserList();
	}
	
	
	public void addUser(User user) {
		StudentService studentService = new StudentService();
		Student student = studentService.getStudentByNo(user.getStudentNo());
		user.setDisplayName(student.getStudentName());
		user.setCreateTime(new Date());
		user.setUpdateTime(new Date());
		user.setUserType((byte)2);
		user.setState((byte)1);	
		user.setUsername(user.getStudentNo());
		UserDao userDao = new UserDao();
		User res = userDao.getUserByUserName(user.getUsername());
		if(res != null) {
			return;
		}
		userDao.addUser(user);
	}
	
	public void deleteUser(int id) {
		UserDao userDao = new UserDao();
		userDao.deleteUser(id);
	}
	
	public void changeStatus(Byte state, int userId) {
		UserDao userDao = new UserDao();
		userDao.changeStatus(state, userId);
	}
}
