package com.priproducts.service;

import com.priproducts.entity.Xiangqing;

import java.util.List;

public interface XiangqingService {
    List<Xiangqing> findAllXinagqing(String x_name);
    Xiangqing findOne(int xid);
}
