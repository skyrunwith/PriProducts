package com.priproducts.service.impl;

import com.priproducts.dao.AddressDao;
import com.priproducts.entity.Address;
import com.priproducts.entity.User;
import com.priproducts.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {
    @Override
    public List<Address> findAddress(User user) {
        return null;
    }

    @Override
    public boolean addOneAddress(Address address) {
        return false;
    }

    @Override
    public boolean deleteAddress(int id) {
        return false;
    }

    @Autowired
    private AddressDao addressDao;

    @Override
    public void insert(Address address) {
        addressDao.insert(address);
    }

    @Override
    public void delete(String aid) {
        addressDao.delete(aid);
    }

    @Override
    public Address find(String aid) {
        return addressDao.find(aid);
    }

    @Override
    public void edit(Address address) {
        addressDao.edit(address);
    }

    @Override
    public List<Address> findByUid(String uid) {
        return addressDao.findByUid(uid);
    }
}
