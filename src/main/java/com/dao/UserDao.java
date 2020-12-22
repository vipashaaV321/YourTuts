package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;
import com.bean.UserBean.Roles;

@Repository
public class UserDao {
	
	@Autowired
	JdbcTemplate stmt;
	public int insertUser(UserBean user) {
		stmt.update("insert into user (firstName,email,password,roleId) values (?,?,?,?)",user.getFirstName(),user.getEmail(),user.getPassword(),user.getRoleId());
		return 1;
	}
	public UserBean authenticate(String email, String password) {
		UserBean userBean=null;
		try {
			userBean=stmt.queryForObject("select * from user where email=? and password=?",new Object[] {email,password},new BeanPropertyRowMapper<UserBean>(UserBean.class));
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return userBean;
	}
	public List<UserBean> getAllStudents() {
		
		List<UserBean> students=stmt.query("select * from user where roleId="+UserBean.Roles.USER.roleId,new BeanPropertyRowMapper<UserBean>(UserBean.class));
		System.out.println(students.size());
		return students;
	}

}
