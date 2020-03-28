package com.priproducts.dao;

import com.priproducts.entity.Admin;

import java.util.List;

public interface AdminDao {
    List<Admin> findAllAdmin(Admin admin);
}
