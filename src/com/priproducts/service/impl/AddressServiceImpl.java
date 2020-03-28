package com.priproducts.service.impl;

import com.priproducts.entity.Address;
import com.priproducts.entity.User;
import com.priproducts.service.AddressService;

import java.util.List;

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
}
