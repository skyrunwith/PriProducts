package com.priproducts.service;

import com.priproducts.entity.Admin;

import java.util.List;

public interface AdminService {
    List<Admin> findAllAdmin(Admin admin);
}
