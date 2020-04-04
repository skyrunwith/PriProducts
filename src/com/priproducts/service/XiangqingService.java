package com.priproducts.service;

import com.priproducts.entity.Xiangqing;

import java.util.List;

public interface XiangqingService {
    List<Xiangqing> findAllXinagqing(String x_name);
    Xiangqing findOne(int xid);

    List<Xiangqing> findXiangqingTop8();

    public List<Xiangqing> query(Xiangqing xiangqing);
    public void add(Xiangqing xiangqing);
    public void update(Xiangqing xiangqing);
    public void delete(String xid);
    public long queryCount(Xiangqing xiangqing);
    public Xiangqing findById(Integer xid);
}
