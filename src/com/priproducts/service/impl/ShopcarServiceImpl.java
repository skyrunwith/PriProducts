package com.priproducts.service.impl;

import com.priproducts.dao.ShopcarDao;
import com.priproducts.entity.Shopcar;
import com.priproducts.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopcarServiceImpl implements ShopcarService {

    @Autowired
    private ShopcarDao shopcarDao;

    @Override
    public void add(Shopcar cart) {
        shopcarDao.add(cart);
    }

    @Override
    public List<Shopcar> findByUid(Shopcar cart) {
        return shopcarDao.findByUid(cart);
    }

    @Override
    public void updateNumbers(Shopcar cart) {
        shopcarDao.updateNumbers(cart);
    }

    @Override
    public void deleteByUid(String uid) {
        shopcarDao.deleteByUid(uid);
    }

    @Override
    public void deleteByGid(Shopcar cart) {
        shopcarDao.deleteByGid(cart);
    }

    @Override
    public Long countByUid(String uid) {
        return shopcarDao.countByUid(uid);
    }

    @Override
    public Shopcar findOne(Shopcar cart) {
        return shopcarDao.findOne(cart);
    }

    @Override
    public void deleteBySid(String sid) {
        shopcarDao.deleteBySid(sid);
    }
}
