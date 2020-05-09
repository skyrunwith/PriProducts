package com.priproducts.controller.admin;

import com.priproducts.entity.Kind;
import com.priproducts.entity.Page;
import com.priproducts.entity.Xiangqing;
import com.priproducts.service.KindService;
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
@RequestMapping("/admin/xiangqing")
public class AdminXiangqingController {

	@Autowired
	private XiangqingService xiangqingService;

	@Autowired
	private KindService kindService;
	
	Page page = new Page();

	
	@RequestMapping("list")
	public String list(Xiangqing xiangqing, Model model) {
		String gname = xiangqing.getX_name();
		xiangqing.setX_name(LikeQuery.add(gname));

		if(xiangqing.getPageNo()==null) xiangqing.setPageNo(1);
		if(xiangqing.getPageSize()==null) xiangqing.setPageSize(Sys.Common.pageSize);
		
		page.setPageNo(xiangqing.getPageNo());
		page.setPageSize(xiangqing.getPageSize());
		page.setCount(xiangqingService.queryCount(xiangqing));
		page.setPages(page.getCount(), page.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());

		xiangqing.setStartRow(page.getStartRow());
		
		List<Xiangqing> xiangqingList = xiangqingService.query(xiangqing);
		
		xiangqing.setX_name(gname);

		model.addAttribute("goods", xiangqing);
		model.addAttribute("page", page);
		model.addAttribute("goods_list", xiangqingList);
		
		return "admin/goods_list";
	}
	
	@RequestMapping("add")
	public String add(Model model) {
		List<Kind> kindList = kindService.queryAll();
		model.addAttribute("kind_list", kindList);
		return "admin/goods_add";
	}

	@RequestMapping("added")
	public String added(Xiangqing xiangqing, Model model, @RequestParam(value="file_img",required=true) MultipartFile file, HttpServletRequest request) {
		String date = DateUtils.DateTimeToString(new Date());
		String img = UploadFile.upGoodsImg(file, request);
		xiangqing.setX_img(img);
		xiangqing.setX_creattime(date);
		xiangqing.setX_time(date);
		xiangqing.setStatus(Sys.Common.USE);
		Kind kind = kindService.queryKindById(xiangqing.getKid() + "");
		xiangqing.setKname(kind.getKname());
		xiangqingService.add(xiangqing);

		return list(xiangqing, model);
	}

	@RequestMapping("update")
	public String update(Xiangqing g, Model model) {
		Xiangqing xiangqing = xiangqingService.findById(g.getXid());
		Kind kind = new Kind();
		List<Kind> kindList = kindService.queryAll();
		model.addAttribute("kind_list", kindList);
		model.addAttribute("goods", xiangqing);

		return "admin/goods_update";
	}

	@RequestMapping("updated")
	public String updated(Xiangqing xiangqing, Model model, @RequestParam(value="file_img",required=true) MultipartFile file, HttpServletRequest request) {
		String img="";
		try {
			if(file!=null&&file.getBytes().length>0){
				 img=UploadFile.upGoodsImg(file, request);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(StringUtils.isNotBlank(img)){
			String oldimg=xiangqing.getX_img();
			UploadFile.deleteFile(request, oldimg);
			xiangqing.setX_img(img);
		}
		String date = DateUtils.DateTimeToString(new Date());
		xiangqing.setX_time(date);
		Kind kind = kindService.queryKindById(xiangqing.getKid() + "");
		xiangqing.setKname(kind.getKname());
		xiangqingService.update(xiangqing);
		return list(xiangqing, model);
	}

	@RequestMapping("isuse")
	public String isUse(Xiangqing xiangqing, Model model) {
		Xiangqing g = xiangqingService.findById(xiangqing.getXid());
		if(g.getStatus().equals(Sys.Common.USE)) g.setStatus(Sys.Common.NO_USE);
		else g.setStatus(Sys.Common.USE);
		g.setX_time(DateUtils.DateTimeToString(new Date()));
		xiangqingService.update(g);

		return list(xiangqing, model);
	}

	@RequestMapping("del")
	public String del(Xiangqing xiangqing, Model model, HttpServletRequest request) {
		//Xiangqing g = xiangqingService.findById(xiangqing.getXid());
		//UploadFile.deleteFile(request, g.getX_img());
		xiangqingService.delete(xiangqing.getXid()+"");
		return list(xiangqing, model);
	}

	@RequestMapping("pluse")
	public String plUse(Xiangqing xiangqing, Model model) {
		String idArr[] = xiangqing.getIds().split(",");
		for (String gid : idArr) {
			Xiangqing g = new Xiangqing();
			g.setXid(Integer.parseInt(gid));
			g.setStatus(Sys.Common.USE);
			xiangqingService.update(g);
		}
		return list(xiangqing, model);
	}

	@RequestMapping("plnouse")
	public String plNoUse(Xiangqing xiangqing, Model model) {
		String idArr[] = xiangqing.getIds().split(",");
		for (String gid : idArr) {
			Xiangqing g = new Xiangqing();
			g.setXid(Integer.parseInt(gid));
			g.setStatus(Sys.Common.NO_USE);
			xiangqingService.update(g);
		}
		return list(xiangqing, model);
	}

	@RequestMapping("pldel")
	public String plDel(Xiangqing xiangqing, Model model, HttpServletRequest request) {
		String[] idArr = xiangqing.getIds().split(",");
		for (String gid : idArr) {
			Xiangqing g = xiangqingService.findById(Integer.parseInt(gid));
			UploadFile.deleteFile(request, g.getX_img());
			xiangqingService.delete(g.getXid()+"");
		}
		return list(xiangqing, model);

	}
}
