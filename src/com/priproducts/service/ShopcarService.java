package com.priproducts.service;

import com.priproducts.dao.ShopcarDao;
import com.priproducts.entity.Shopcar;

import java.util.List;

public interface ShopcarService {

    public void add(Shopcar cart);
    public List<Shopcar> findByUid(Shopcar cart);
    public void updateNumbers(Shopcar cart);
    public void deleteByUid(String uid);
    public void deleteByGid(Shopcar cart);
    public Long countByUid(String uid);
    public Shopcar findOne(Shopcar cart);
    public void deleteBySid(String sid);
}
