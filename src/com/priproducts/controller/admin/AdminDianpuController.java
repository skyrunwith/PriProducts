package com.priproducts.controller.admin;
import com.priproducts.entity.Dianpu;
import com.priproducts.entity.Kind;
import com.priproducts.entity.Order;
import com.priproducts.entity.Page;
import com.priproducts.service.DianpuService;
import com.priproducts.service.KindService;
import com.priproducts.service.OrderService;
import com.priproducts.service.XiangqingService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.LikeQuery;
import com.priproducts.util.Sys;
import com.priproducts.util.UploadFile;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/dianpu")
public class AdminDianpuController {
	@Autowired
	private DianpuService dianpuService;
	@Autowired
	private XiangqingService xiangqingService;

	@Autowired
	private KindService kindService;
	
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
	public String add(Model model){
		List<Kind> kindList = kindService.queryAll();
		model.addAttribute("kind_list", kindList);
		return Sys.Common.admin+"/dianpu_add";
	}

	@RequestMapping("added")
	public String added(@RequestParam(value = "file_img",required = true) MultipartFile file, Dianpu k, Model m, HttpServletRequest request){
		String simg = UploadFile.upimg(file, request);
		k.setSimg(simg);
		k.setTime(DateUtils.DateTimeToString(new Date()));
		dianpuService.add(k);
		return list(k,m);
	}

	@RequestMapping("update")
	public String update(@RequestParam String sid, Model m){
		Dianpu dianpu=dianpuService.queryDianpuById(sid);
		m.addAttribute("dianpu", dianpu);
		List<Kind> kindList = kindService.queryAll();
		m.addAttribute("kind_list", kindList);
		return Sys.Common.admin+"/dianpu_update";
	}

	@RequestMapping("updated")
	public String updated(Dianpu dianpu, Model m,  @RequestParam(value="file_img",required=true) MultipartFile file, HttpServletRequest request){
		String img="";
		try {
			if(file!=null&&file.getBytes().length>0){
				img=UploadFile.upGoodsImg(file, request);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(StringUtils.isNotBlank(img)){
			String oldimg=dianpu.getSimg();
			UploadFile.deleteFile(request, oldimg);
			dianpu.setSimg(img);
		}
		String date = DateUtils.DateTimeToString(new Date());
		dianpu.setTime(date);
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
