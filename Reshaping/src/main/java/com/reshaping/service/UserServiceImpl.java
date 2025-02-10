package com.reshaping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reshaping.entity.Beggar;
import com.reshaping.entity.LoginUser;
import com.reshaping.entity.User;
import com.reshaping.dao.*;

@Service
public class UserServiceImpl implements userService {

	@Autowired(required=true)
	 private ReDao d;
	@Override
	public int register(User user) {
	    int i = d.insert(user);
		return i;
	}
	@Override
	public User loginUser(LoginUser loginUser) {
		 
		return d.validateUser(loginUser);
	}
	@Override
	public int registerBeggar(Beggar beg) {
		int i = d.insertBeg(beg);
		// TODO Auto-generated method stub
		return i;
	}
	@Override
	public Beggar getdata(LoginUser loginUser) {
		// TODO Auto-generated method stub
		return   d.getAllDataOfBeggar(loginUser);
	}
	@Override
	public User updateUser(LoginUser loginUser) {
		// TODO Auto-generated method stub
		 
		return d.update(loginUser);
	}
	@Override
	public Beggar getDataForAdminPage(LoginUser loginUser) {
		// TODO Auto-generated method stub
		
		return d.getAllDataForAdmin(loginUser);
	}
	@Override
	public User getAlluserData(LoginUser loginUser) {
		// TODO Auto-generated method stub
		return d.getAllUserData(loginUser);
	}
	

}
