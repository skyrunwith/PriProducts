package com.priproducts.service;

import com.priproducts.entity.Dianpu;

import java.util.List;

public interface DianpuService {
    List<Dianpu> findAllDianpu(String sname);
    Dianpu findOne(int sid);
}
