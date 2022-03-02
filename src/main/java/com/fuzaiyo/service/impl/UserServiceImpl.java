package com.fuzaiyo.service.impl;

import com.fuzaiyo.dao.UserDao;
import com.fuzaiyo.domain.User;
import com.fuzaiyo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findUserByID(int id) {
        return userDao.findById(id);
    }

    //根据账号密码查询用户进行登录
    @Override
    public User userLogin(String username, String password) {
        return userDao.findByUsernameAndPassword(username, password);
    }

    //动态更新用户，返回一个更新后的完整用户
    @Override
    public User updateUser(String consignee, String phone, String address, int id, int count) {
        userDao.updateByFakeUser(id,phone,address,consignee,count);
        User newUser = userDao.findById(id);
        return newUser;
    }
}
