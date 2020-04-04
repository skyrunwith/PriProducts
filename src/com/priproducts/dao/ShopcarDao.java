package com.priproducts.dao;

import com.priproducts.entity.Shopcar;

import java.util.List;

public interface ShopcarDao {
    public void add(Shopcar cart);
    public List<Shopcar> findByUid(Shopcar cart);
    public Shopcar findOne(Shopcar cart);
    public void updateNumbers(Shopcar cart);
    public void deleteByUid(String uid);
    public void deleteBySid(String sid);
    public void deleteByGid(Shopcar cart);
    public Long countByUid(String uid);
}
