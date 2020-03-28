package com.priproducts.service.impl;

import com.priproducts.dao.UserDao;
import com.priproducts.entity.Admin;
import com.priproducts.entity.User;
import com.priproducts.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void insert(User user) {
        userDao.insert(user);
    }

    @Override
    public User findByName(String username) {
        return userDao.findByName(username);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public User findById(String uid) {
        return userDao.findById(uid);
    }

    @Override
    public List<Admin> findAll(Admin user) {
        return userDao.findAll(user);
    }

    @Override
    public Long queryCount(Admin user) {
        return userDao.queryCount(user);
    }

    @Override
    public Admin findAdmin(String uid) {
        return userDao.findAdmin(uid);
    }

    @Override
    public void updateAdmin(Admin user) {
        userDao.updateAdmin(user);
    }

    @Override
    public void delete(String uid) {
        userDao.delete(uid);
    }

    @Override
    public void updateStatus(Admin user) {
        userDao.updateStatus(user);
    }
}
