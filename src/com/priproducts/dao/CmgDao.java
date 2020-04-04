package com.priproducts.dao;


import com.priproducts.entity.Cmg;

public interface CmgDao {
	public Cmg queryCmg(Cmg c);
	public void updateTs(String ts, String cid);
}
