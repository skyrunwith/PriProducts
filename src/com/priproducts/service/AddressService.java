package com.priproducts.service;

import com.priproducts.entity.Address;
import com.priproducts.entity.User;

import java.util.List;

public interface AddressService {
    List<Address> findAddress(User user); //查询所有地址信息
    boolean addOneAddress(Address address); //添加一个地址信息
    boolean deleteAddress(int id); //删除
}