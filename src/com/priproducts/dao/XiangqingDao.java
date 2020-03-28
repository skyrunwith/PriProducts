package com.priproducts.dao;

import com.priproducts.entity.Xiangqing;

import java.util.List;

public interface XiangqingDao {
    List<Xiangqing> findAllXinagqing(String x_name);
    Xiangqing findOne(int xid);
}
