package com.priproducts.dao;

import java.util.List;

public interface ShopcarDao {
    List<ShopcarDao> findAllcars(int uid); //查询
    boolean delShopcar(int gid); //删除
    boolean addOneShopcar(ShopcarDao shopcar);//添加
}
