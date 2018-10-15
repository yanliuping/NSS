package com.nss.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import com.nss.entity.UserInfo;
import com.nss.mapper.UserInfoMapper;
import com.nss.service.UserService;
import com.nss.util.EncryptUtil;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserInfoMapper userMapper;

	public Boolean validateUser(UserInfo userInfo) {
		Boolean isValid = false;
		if (null == userInfo || StringUtils.isEmpty(userInfo.getUserName())) {
			return isValid;
		}
		UserInfo actullyUserInfo = userMapper.getUserInfo(userInfo.getUserName());
		if (null == actullyUserInfo || StringUtils.isEmpty(actullyUserInfo.getUserName())) {
			return isValid;
		}
		String salt = actullyUserInfo.getSalt();
		String password = userInfo.getPassword();
		String encryptPassword = EncryptUtil.encryptPasswordBySalt(password, salt);
		String actullyEncryptPassword = actullyUserInfo.getPassword();
		if (actullyEncryptPassword.equals(encryptPassword)) {
			isValid = true;
		}
		return isValid;
	}

	@Override
	public Boolean registerUser(UserInfo userInfo) {
		String saltValue = EncryptUtil.generateSaltValue();
		String encryptedPassword = EncryptUtil.encryptPasswordBySalt(userInfo.getPassword(), saltValue);
		userInfo.setSalt(saltValue);
		userInfo.setPassword(encryptedPassword);

		if (userMapper.insertUserInfo(userInfo) > 0) {
			return true;
		}
		return false;
	}
}
