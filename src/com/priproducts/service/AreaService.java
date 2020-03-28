package com.priproducts.service;

import com.priproducts.entity.Area;

import java.util.List;

public interface AreaService {
    Area findArea(int areaId);
    List<Area> findAreas(int areaId);
}
