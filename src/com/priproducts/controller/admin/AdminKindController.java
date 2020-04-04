package com.priproducts.controller.admin;
import com.priproducts.entity.Kind;
import com.priproducts.entity.Page;
import com.priproducts.service.KindService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.LikeQuery;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/admin/kind")
public class AdminKindController {
	@Autowired
	private KindService kindService;
	
	Page page=new Page();
	
	@RequestMapping("list")
	public String list(Kind kind, Model m){
		String kindstr=kind.getKname();
		kind.setKname(LikeQuery.add(kindstr));
		
		if(kind.getPageNo()==null)kind.setPageNo(1);
		if(kind.getPageSize()==null)kind.setPageSize(Sys.Common.pageSize);
		
		page.setPageNo(kind.getPageNo());
		page.setPageSize(kind.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());
		page.setCount(kindService.queryCount(kind));
		page.setPages(page.getCount(), page.getPageSize());
		
		kind.setStartRow(page.getStartRow());
		
		List<Kind> li=kindService.queryList(kind);
		
		kind.setKname(kindstr);

		m.addAttribute("kind", kind);
		m.addAttribute("page", page);
		m.addAttribute("li", li);
		return Sys.Common.admin+"/kind_list";
	}

	@RequestMapping("add")
	public String add(){
		return Sys.Common.admin+"/kind_add";
	}

	@RequestMapping("added")
	public String added(Kind k, Model m){
		k.setCreatetime(DateUtils.DateTimeToString(new Date()));
		kindService.add(k);
		return list(k,m);
	}

	@RequestMapping("update")
	public String update(@RequestParam String kid, Model m){
		Kind kind=kindService.queryKindById(kid);
		m.addAttribute("kind", kind);
		return Sys.Common.admin+"/kind_update";
	}

	@RequestMapping("updated")
	public String updated(Kind kind, Model m){
		kindService.update(kind);
		return list(kind, m);
	}

	@RequestMapping("isuse")
	public String isUse(Kind kind, Model m){
		Kind oldk=kindService.queryKindById(kind.getKid()+"");
		Kind k=new Kind();
		k.setKid(kind.getKid());
		if(oldk.getStatus()==Sys.Common.USE) {
			k.setStatus(Sys.Common.NO_USE);
			kindService.banStatus(k);
		}
		else {
			k.setStatus(Sys.Common.USE);
			kindService.update(k);
		}
		return list(kind, m);
	}

	@RequestMapping("del")
	public String del(Kind kind, Model m){
		kindService.deleteById(kind.getKid()+"");
		return list(kind, m);
	}

	@RequestMapping("pluse")
	public String plUse(Kind kind, Model m){
		String[] idArr=kind.getIds().split(",");
		for(String id:idArr){
			Kind k=new Kind();
			k.setKid(Integer.parseInt(id));
			k.setStatus(Sys.Common.USE);
			kindService.update(k);
		}
		return list(kind, m);
	}

	@RequestMapping("plnouse")
	public String plNoUse(Kind kind, Model m){
		String[] idArr=kind.getIds().split(",");
		for(String id:idArr){
			Kind k=new Kind();
			k.setKid(Integer.parseInt(id));
			k.setStatus(Sys.Common.NO_USE);
			kindService.banStatus(k);
		}
		return list(kind, m);
	}


	@RequestMapping("pldel")
	public String pldel(Kind kind, Model m){
		String[] idArr=kind.getIds().split(",");
		for(String id:idArr){
			kindService.deleteById(id);
		}
		return list(kind, m);
	}
	 
}
