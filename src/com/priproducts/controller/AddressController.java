package com.priproducts.controller;

import com.priproducts.entity.Address;
import com.priproducts.entity.ApiResponse;
import com.priproducts.entity.User;
import com.priproducts.service.AddressService;
import com.priproducts.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/shouye")
public class AddressController {
	
	@Autowired
	private AddressService addressService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/insertAddress")
	@ResponseBody
	public ApiResponse insert(Address address, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = userService.findById(String.valueOf(address.getUid()));
		if(address.getId()!=null) {
			addressService.edit(address);
		}else {
			addressService.insert(address);
			if(user.getAid() == null ) {
				List<Address> addressList = addressService.findByUid(String.valueOf(user.getUid()));
				for (Address Address : addressList) {
					user.setAid(Address.getId());
					userService.update(user);
					session.setAttribute("user", user);
					session.setAttribute("default_address", Address);
				}
			}
			
		}
		List<Address> address_list = addressService.findByUid(user.getUid()+"");
		session.setAttribute("address_list", address_list);
		return new ApiResponse(0, null,"添加成功");
	}
	
	@RequestMapping("edit")
	public String edit(String aid, Model model) {
		Address address = addressService.find(aid);
		model.addAttribute("address", address);
		return "shouye/add_address";
	}
	
	@RequestMapping("del")
	public String del(String aid, Model model, HttpServletRequest request) {
		addressService.delete(aid);
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		List<Address> address_list = addressService.findByUid(user.getUid()+"");
		session.setAttribute("address_list", address_list);
		return "shouye/add_address";
	}
	
	@RequestMapping("default")
	public String defaultAddress(String aid, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		user.setAid(Integer.parseInt(aid));
		userService.update(user);
		List<Address> address_list = addressService.findByUid(user.getUid()+"");
		session.setAttribute("address_list", address_list);
		session.setAttribute("user", user);
		return "shouye/add_address";
	}
	
}
