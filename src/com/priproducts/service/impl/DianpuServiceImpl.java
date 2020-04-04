package com.priproducts.service.impl;

import com.priproducts.dao.DianpuDao;
import com.priproducts.entity.Dianpu;
import com.priproducts.entity.Order;
import com.priproducts.service.DianpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DianpuServiceImpl implements DianpuService {

    @Autowired
    private DianpuDao dianpuDao;

    @Override
    public List<Dianpu> findAllDianpu(Integer kid) {
        return dianpuDao.findAllDianpu(kid);
    }

    @Override
    public Dianpu findOne(int sid) {
        return null;
    }

    @Override
    public Long count(Dianpu dianpu) {
        return dianpuDao.count(dianpu);
    }

    @Override
    public List<Order> findAll(Dianpu dianpu) {
        return dianpuDao.findAll(dianpu);
    }

    @Override
    public void add(Dianpu dianpu) {
        dianpuDao.add(dianpu);
    }

    @Override
    public List<Dianpu> queryList(Dianpu dianpu) {
        return dianpuDao.queryList(dianpu);
    }

    @Override
    public Dianpu queryDianpuById(String sid) {
        return dianpuDao.queryDianpuById(sid);
    }

    @Override
    public void update(Dianpu dianpu) {
        dianpuDao.update(dianpu);
    }

    @Override
    public void deleteById(String sid) {
        dianpuDao.deleteById(sid);
    }

    @Override
    public Long queryCount(Dianpu dianpu) {
        return dianpuDao.queryCount(dianpu);
    }

    @Override
    public List<Dianpu> queryAll() {
        return dianpuDao.queryAll();
    }

    @Override
    public void banStatus(Dianpu dianpu) {
        dianpuDao.banStatus(dianpu);
    }
}
