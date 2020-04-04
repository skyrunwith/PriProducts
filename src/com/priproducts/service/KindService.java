package com.priproducts.service;

import com.priproducts.entity.Kind;

import java.util.List;

public interface KindService {
    List<Kind> findAllKind(); //查询
    List<Kind> findByName(String kname);
    public void add(Kind kind);
    public List<Kind> queryList(Kind k);
    public Kind queryKindById(String kid);
    public void update(Kind kind);
    public void deleteById(String kid);
    public Long queryCount(Kind k);
    public List<Kind> queryAll();
    public void banStatus(Kind kind);

}
