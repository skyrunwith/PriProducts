package com.priproducts.dao;

import com.priproducts.entity.Dianpu;
import com.priproducts.entity.Order;

import java.util.List;

public interface DianpuDao {
    List<Dianpu> findAllDianpu(Integer kid);
    Dianpu findOne(int sid);

    Long count(Dianpu dianpu);

    List<Dianpu> findAll(Dianpu dianpu);

    public void add(Dianpu dianpu);
    public List<Dianpu> queryList(Dianpu dianpu);
    public Dianpu queryDianpuById(String sid);
    public void update(Dianpu dianpu);
    public void deleteById(String sid);
    public Long queryCount(Dianpu dianpu);
    public List<Dianpu> queryAll();
    public void banStatus(Dianpu dianpu);

    Dianpu findByName(String sname);
}
