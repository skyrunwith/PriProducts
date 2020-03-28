package com.priproducts.dao;

import com.priproducts.entity.Kind;

import java.util.List;

public interface KindDao {
    List<Kind> findAllKind(); //查询
}
