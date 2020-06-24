package com.demo.login;

public class LoginService{
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("Srishti") && password.equals("dummy");
	}
}
