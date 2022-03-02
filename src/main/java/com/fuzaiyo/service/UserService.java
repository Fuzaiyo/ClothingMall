package com.fuzaiyo.service;

import com.fuzaiyo.domain.User;

public interface UserService {
    User userLogin(String username, String password);


    User findUserByID(int id);

    User updateUser(String consignee, String phone, String address, int id, int count);
}
