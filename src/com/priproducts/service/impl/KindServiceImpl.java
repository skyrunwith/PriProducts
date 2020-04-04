package com.priproducts.service.impl;

import com.priproducts.dao.KindDao;
import com.priproducts.entity.Kind;
import com.priproducts.service.KindService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KindServiceImpl implements KindService {


    @Autowired
    private KindDao kindDao;

    @Override
    public List<Kind> findAllKind() {
        return kindDao.findAllKind();
    }

    @Override
    public List<Kind> findByName(String kname) {
        return kindDao.findByName(kname);
    }

    @Override
    public void add(Kind kind) {
        kindDao.add(kind);
    }

    @Override
    public List<Kind> queryList(Kind k) {
        return kindDao.queryList(k);
    }

    @Override
    public Kind queryKindById(String kid) {
        return kindDao.queryKindById(kid);
    }

    @Override
    public void update(Kind kind) {
        kindDao.update(kind);
    }

    @Override
    public void deleteById(String kid) {
        kindDao.deleteById(kid);
    }

    @Override
    public Long queryCount(Kind k) {
        return kindDao.queryCount(k);
    }

    @Override
    public List<Kind> queryAll() {
        return kindDao.queryAll();
    }

    @Override
    public void banStatus(Kind kind) {
        kindDao.banStatus(kind);
    }
}
