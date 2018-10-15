package com.nss.service;

import com.nss.entity.UserInfo;

public interface UserService {

	public Boolean validateUser(UserInfo userInfo);

	public Boolean registerUser(UserInfo userInfo);
}
