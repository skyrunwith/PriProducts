package com.priproducts.service;


import com.priproducts.entity.Cmg;

public interface CmgService {
	public Cmg queryCmg(Cmg c);
	public void updateTs(String ts, String cid);
}
