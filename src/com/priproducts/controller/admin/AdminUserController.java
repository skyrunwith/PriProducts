package com.priproducts.controller.admin;

import com.priproducts.entity.Admin;
import com.priproducts.entity.Kind;
import com.priproducts.entity.Page;
import com.priproducts.entity.User;
import com.priproducts.service.UserService;
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
import java.util.List;

@Controller
@RequestMapping("/admin/user/")
public class AdminUserController {

	@Autowired
	private UserService userService;
	
	Page page = new Page();
	
	@RequestMapping("user_list")
	public String userList(Admin user, Model model) {
		String str = user.getUsername();
		user.setUsername(LikeQuery.add(str));
		
		if(user.getPageNo()==null) user.setPageNo(1);
		if(user.getPageSize()==null) user.setPageSize(Sys.Common.pageSize);
		
		page.setPageNo(user.getPageNo());
		page.setPageSize(user.getPageSize());
		page.setStartRow(user.getPageNo(), user.getPageSize());
		page.setCount(userService.queryCount(user));
		page.setPages(page.getCount(), page.getPageSize());
		
		user.setStartRow(page.getStartRow());
		
		List<Admin> user_list = userService.findAll(user);
		
		user.setUsername(str);
		model.addAttribute("user", user);
		model.addAttribute("page", page);
		model.addAttribute("user_list", user_list);
		return "admin/user_list";
	}

	@RequestMapping("add")
	public String add(){
		return "admin/insert_user";
	}

	@RequestMapping("status")
	public String status(Admin admin, Model model) {
		User user = userService.findById(admin.getUid()+"");
		if(admin.getReason()!=null && user.getStatus() == Sys.Common.USE) {
				user.setStatus(Sys.Common.NO_USE);
				user.setReason(admin.getReason());
				userService.update(user);
		}else {
			user.setReason("");
			user.setStatus(Sys.Common.USE);
			userService.update(user);
		}
		return userList(admin,model);
	}

	@RequestMapping("insert")
	public String insert(@RequestParam(value = "file_img",required = true) MultipartFile file, User user, HttpServletRequest request, Model model) {
		String head_img = UploadFile.upimg(file, request);
		user.setHead_img(head_img);
		userService.insert(user);
		return "redirect:user_list";
	}

	@RequestMapping("update")
	public String update(String uid, Model model) {
		Admin user = userService.findAdmin(uid);
		model.addAttribute("user", user);
		return "admin/user_update";
	}

	@RequestMapping("updated")
	public String updated(Admin user, Model model) {
		userService.updateAdmin(user);
		return "redirect:user_list";
	}

	@RequestMapping("pluse")
	public String PlUse(Admin user, Model model){
		String idsarr[] = user.getIds().split(",");
		for (String uid : idsarr) {
			Admin aUser = new Admin();
			aUser.setUid(Integer.parseInt(uid));
			aUser.setStatus(Sys.Common.USE);
			userService.updateStatus(aUser);
		}
		return userList(user, model);
	}

	@RequestMapping("plnouse")
	public String PlNouse(Admin user, Model model){
		String idsarr[] = user.getIds().split(",");
		for (String uid : idsarr) {
			Admin aUser = new Admin();
			aUser.setUid(Integer.parseInt(uid));
			aUser.setStatus(Sys.Common.NO_USE);
			userService.updateStatus(aUser);
		}
		return userList(user, model);
	}
	@RequestMapping("pldel")
	public String PlDelete(Admin user, Model model){
		String idsarr[] = user.getIds().split(",");
		for (String uid : idsarr) {
			userService.delete(uid);
		}
		return userList(user, model);
	}

	@RequestMapping("del")
	public String del(Admin user, Model model){
		userService.delete(user.getUid() + "");
		return userList(user, model);
	}
}
