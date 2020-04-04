package com.priproducts.dao;

import com.priproducts.entity.Kind;

import java.util.List;

public interface KindDao {
    List<Kind> findAllKind(); //查询

    List<Kind> findByName(String kname);

    public void add(Kind k);
    public List<Kind> queryList(Kind k);
    public Kind queryKindById(String kid);
    public void update(Kind kind) ;
    public void deleteById(String kid);
    public Long queryCount(Kind k);
    public List<Kind> queryAll();
    public void banStatus(Kind kind);
}
