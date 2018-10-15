package com.nss.mapper;

import com.nss.entity.UserInfo;

public interface UserInfoMapper {

	public UserInfo getUserInfo(String userName);

	public int insertUserInfo(UserInfo userInfo);
}
