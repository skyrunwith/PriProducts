package com.priproducts.service.impl;

import com.priproducts.dao.XiangqingDao;
import com.priproducts.entity.Xiangqing;
import com.priproducts.service.XiangqingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class XiangqingServiceImpl implements XiangqingService {
    @Autowired
    private XiangqingDao xiangqingDao;

    @Override
    public List<Xiangqing> findAllXinagqing(String x_name) {
        return xiangqingDao.findAllXinagqing(x_name);
    }

    @Override
    public Xiangqing findOne(int xid) {
        return xiangqingDao.findById(xid);
    }

    @Override
    public List<Xiangqing> findXiangqingTop8() {
        return xiangqingDao.findXiangqingTop8();
    }

    @Override
    public List<Xiangqing> query(Xiangqing xiangqing) {
        return xiangqingDao.query(xiangqing);
    }

    @Override
    public void add(Xiangqing xiangqing) {
        xiangqingDao.add(xiangqing);
    }

    @Override
    public void update(Xiangqing xiangqing) {
        xiangqingDao.update(xiangqing);
    }

    @Override
    public void delete(String gid) {
        xiangqingDao.delete(gid);
    }

    @Override
    public long queryCount(Xiangqing xiangqing) {
        return xiangqingDao.queryCount(xiangqing);
    }

    @Override
    public Xiangqing findById(Integer gid) {
        return xiangqingDao.findById(gid);
    }
}
