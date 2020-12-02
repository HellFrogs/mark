package com.dayrain.service;

import com.dayrain.Dao.LoginHistoryDao;
import com.dayrain.entity.LoginHistory;

public class LoginHistoryService{

	public void addLoginHistory(LoginHistory loginHistory) {
		LoginHistoryDao loginHistoryDao = new LoginHistoryDao();
		loginHistoryDao.addLoginHistory(loginHistory);
	}
}
