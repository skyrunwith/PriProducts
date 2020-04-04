package com.priproducts.dao;

import com.priproducts.entity.Xiangqing;

import java.util.List;

public interface XiangqingDao {
    List<Xiangqing> findAllXinagqing(String x_name);
    Xiangqing findById(int xid);
    List<Xiangqing> findXiangqingTop8();

    public List<Xiangqing> query(Xiangqing xiangqing);
    public void add(Xiangqing xiangqing);
    public void update(Xiangqing xiangqing);
    public void delete(String xid);
    public long queryCount(Xiangqing xiangqing);
    public Xiangqing findById(String xid);
}
