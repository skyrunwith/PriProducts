package com.priproducts.service;

import com.priproducts.dao.ShopcarDao;

import java.util.List;

public interface ShopcarService {
    List<ShopcarDao> findAllcars(int uid); //查询
    boolean delShopcar(int gid); //删除
    boolean addOneShopcar(ShopcarDao shopcar);//添加
}
