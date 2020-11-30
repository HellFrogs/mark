package com.dayrain.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.dayrain.entity.User;
import com.dayrain.utils.DBUtils;

public class UserDao {
	
	public User getUserByUserNameAndPassword(String username, String password) {
		Connection con = null;
		try {
			con = DBUtils.getConnection();
			String sql = "select * from tb_user where username = ? and password = ?";
			PreparedStatement pre = con.prepareStatement(sql);
			pre.setString(1, username);
			pre.setString(2, password);
			ResultSet resultSet = pre.executeQuery();
			while(resultSet.next()) {
				Integer userId = resultSet.getInt("user_id");
			
				Byte userType = resultSet.getByte("user_type");
				Byte state = resultSet.getByte("state");
				Date createTime = resultSet.getDate("create_time");
				Date updateTime = resultSet.getDate("update_time");
				User user = new User();
				
				user.setUserId(userId);
				user.setUserType(userType);
				user.setPassword(password);
				user.setUsername(username);
				user.setState(state);
				user.setCreateTime(createTime);
				user.setUpdateTime(updateTime);
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtils.closeConnection(con, null, null);
		}
		return null;
	}
}
