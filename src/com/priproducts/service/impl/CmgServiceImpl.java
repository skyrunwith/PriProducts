package com.priproducts.service.impl;

import com.priproducts.dao.CmgDao;
import com.priproducts.entity.Cmg;
import com.priproducts.service.CmgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("cmgService")
public class CmgServiceImpl implements CmgService {

	@Autowired
	private CmgDao cmgDao;
 
	
	@Override
	public Cmg queryCmg(Cmg c) {
		return cmgDao.queryCmg(c);
	}


	@Override
	public void updateTs(String ts, String cid) {
		cmgDao.updateTs(ts, cid);
	}

}
