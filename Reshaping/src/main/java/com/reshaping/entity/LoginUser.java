package com.reshaping.entity;

public class LoginUser {
private String email;
private String password;
@Override
public String toString() {
	return "LoginUser [email=" + email + ", password=" + password + "]";
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}
