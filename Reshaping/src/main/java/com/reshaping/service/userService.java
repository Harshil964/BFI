package com.reshaping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.reshaping.entity.Beggar;
import com.reshaping.entity.LoginUser;
import com.reshaping.entity.User;


public interface userService {
public int register(User user);
public User updateUser(LoginUser loginUser);
public User getAlluserData(LoginUser loginUser);
public User loginUser(LoginUser loginUser);
public int registerBeggar(Beggar beg);
public Beggar getdata(LoginUser loginUser);
public Beggar getDataForAdminPage(LoginUser loginUser);
}
