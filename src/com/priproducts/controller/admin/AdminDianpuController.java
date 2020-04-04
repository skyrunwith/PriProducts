package com.priproducts.controller.admin;
import com.priproducts.entity.Dianpu;
import com.priproducts.entity.Order;
import com.priproducts.entity.Page;
import com.priproducts.service.DianpuService;
import com.priproducts.service.OrderService;
import com.priproducts.service.XiangqingService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.LikeQuery;
import com.priproducts.util.Sys;
import com.priproducts.util.UploadFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/dianpu")
public class AdminDianpuController {
	@Autowired
	private DianpuService dianpuService;
	@Autowired
	private XiangqingService xiangqingService;
	
	Page page = new Page();
	
	@RequestMapping("list")
	public String list(Dianpu dianpu , Model model) {
		
		if(dianpu.getPageNo() == null) dianpu.setPageNo(1);
		if(dianpu.getPageSize() == null) dianpu.setPageSize(10);
		
		page.setCount(dianpuService.count(dianpu));
		page.setPageNo(dianpu.getPageNo());
		page.setPageSize(dianpu.getPageSize());
		page.setPages(page.getCount(), page.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());
		
		dianpu.setStartRow(page.getStartRow());
		
		List<Order> dianpu_list = dianpuService.findAll(dianpu);

		
		model.addAttribute("page", page);
		model.addAttribute("dianpu", dianpu);
		model.addAttribute("dianpu_list", dianpu_list);
		
		return "admin/dianpu_list";
	}

	@RequestMapping("add")
	public String add(){
		return Sys.Common.admin+"/dianpu_add";
	}

	@RequestMapping("added")
	public String added(@RequestParam(value = "file_img",required = true) MultipartFile file, Dianpu k, Model m, HttpServletRequest request){
		String simg = UploadFile.upimg(file, request);
		k.setSimg(simg);
		k.setKid(0);
		k.setTime(DateUtils.DateTimeToString(new Date()));
		dianpuService.add(k);
		return list(k,m);
	}

	@RequestMapping("update")
	public String update(@RequestParam String sid, Model m){
		Dianpu dianpu=dianpuService.queryDianpuById(sid);
		m.addAttribute("dianpu", dianpu);
		return Sys.Common.admin+"/dianpu_update";
	}

	@RequestMapping("updated")
	public String updated(Dianpu dianpu, Model m){
		dianpuService.update(dianpu);
		return list(dianpu, m);
	}

	@RequestMapping("isuse")
	public String isUse(Dianpu dianpu, Model m){
		Dianpu oldk=dianpuService.queryDianpuById(dianpu.getSid()+"");
		if(oldk.getStatus()==Sys.Common.USE) {
			oldk.setStatus(Sys.Common.NO_USE);
			dianpuService.banStatus(oldk);
		}
		else {
			oldk.setStatus(Sys.Common.USE);
			dianpuService.update(oldk);
		}
		return list(dianpu, m);
	}

	@RequestMapping("del")
	public String del(Dianpu dianpu, Model m){
		dianpuService.deleteById(dianpu.getSid()+"");
		return list(dianpu, m);
	}

	@RequestMapping("pluse")
	public String plUse(Dianpu dianpu, Model m){
		String[] idArr=dianpu.getIds().split(",");
		for(String id:idArr){
			Dianpu k= dianpuService.queryDianpuById(id);
			k.setStatus(Sys.Common.USE);
			dianpuService.update(k);
		}
		return list(dianpu, m);
	}

	@RequestMapping("plnouse")
	public String plNoUse(Dianpu dianpu, Model m){
		String[] idArr=dianpu.getIds().split(",");
		for(String id:idArr){
			Dianpu k= dianpuService.queryDianpuById(id);
			k.setStatus(Sys.Common.NO_USE);
			dianpuService.banStatus(k);
		}
		return list(dianpu, m);
	}


	@RequestMapping("pldel")
	public String pldel(Dianpu dianpu, Model m){
		String[] idArr=dianpu.getIds().split(",");
		for(String id:idArr){
			dianpuService.deleteById(id);
		}
		return list(dianpu, m);
	}
}
