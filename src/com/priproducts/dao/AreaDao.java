package com.priproducts.dao;

import com.priproducts.entity.Area;

import java.util.List;

public interface AreaDao {
    Area findArea(int areaId);
    List<Area> findAreas(int areaId);
}
