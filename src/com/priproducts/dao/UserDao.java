package com.priproducts.dao;

import com.priproducts.entity.Admin;
import com.priproducts.entity.User;

import java.util.List;

public interface UserDao {

    public void insert(User user);
    public User findByName(String username);
    public void update(User user);
    public User findById(String uid);

    /*	后台需要的部分	*/
    public List<Admin> findAll(Admin user);
    public Long queryCount(Admin user);
    public Admin findAdmin(String uid);
    public void updateAdmin(Admin user);
    public void delete(String uid);
    public void updateStatus(Admin user);
}
