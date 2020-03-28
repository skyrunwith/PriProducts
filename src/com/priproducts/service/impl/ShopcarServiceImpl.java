package com.priproducts.service.impl;

import com.priproducts.dao.ShopcarDao;
import com.priproducts.service.ShopcarService;

import java.util.List;

public class ShopcarServiceImpl implements ShopcarService {
    @Override
    public List<ShopcarDao> findAllcars(int uid) {
        return null;
    }

    @Override
    public boolean delShopcar(int gid) {
        return false;
    }

    @Override
    public boolean addOneShopcar(ShopcarDao shopcar) {
        return false;
    }
}
