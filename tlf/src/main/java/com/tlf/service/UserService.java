package com.tlf.service;

import com.tlf.pojo.User;
import com.tlf.vo.PageResult;

import java.util.List;


public interface UserService {
    List<User> findAll();

    String login(User user);

    PageResult getUserList(PageResult pageResult);

    void updateStatus(User user);

    void addUser(User user);

    User getUserById(Integer id);

    void updateUser(User user);

    void deleteUserById(Integer id);


    User selectOneById(Integer id);
}
