package com.priproducts.dao;

import com.priproducts.entity.Dianpu;

import java.util.List;

public interface DianpuDao {
    List<Dianpu> findAllDianpu(String sname);
    Dianpu findOne(int sid);

}
