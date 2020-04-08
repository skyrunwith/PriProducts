package com.priproducts.controller.admin;
import com.priproducts.entity.Order;
import com.priproducts.entity.Page;
import com.priproducts.entity.Xiangqing;
import com.priproducts.service.OrderService;
import com.priproducts.service.XiangqingService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.LikeQuery;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/order")
public class AdminShoppingController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private XiangqingService xiangqingService;
	
	Page page = new Page();
	
	@RequestMapping("list")
	public String list(Order order , Model model) {
		String ordernumber = order.getOrdernumber();
		String uusername = order.getUsername();
		String gname = order.getX_name();
		
		order.setOrdernumber(LikeQuery.add(ordernumber));
		order.setUsername(LikeQuery.add(uusername));
		order.setX_name(LikeQuery.add(gname));
		
		if(order.getPageNo() == null) order.setPageNo(1);
		if(order.getPageSize() == null) order.setPageSize(10);
		
		page.setCount(orderService.count(order));
		page.setPageNo(order.getPageNo());
		page.setPageSize(order.getPageSize());
		page.setPages(page.getCount(), page.getPageSize());
		page.setStartRow(page.getPageNo(), page.getPageSize());
		
		order.setStartRow(page.getStartRow());
		
		List<Order> order_list = orderService.findAll(order);
		
		order.setOrdernumber(ordernumber);
		order.setUsername(uusername);
		order.setX_name(gname);
		
		model.addAttribute("page", page);
		model.addAttribute("order", order);
		model.addAttribute("order_list", order_list);
		
		return "admin/order_list";
	}
	
	@RequestMapping("showmore")
	public String showMore(String oid, Model model) {
		Order order = orderService.findOneByOrderNumber(oid);
		model.addAttribute("order", order);

		return "admin/show_order";
	}

	@RequestMapping("tips")
	public void tips(Order order) {
		orderService.update(order);
	}

	@RequestMapping("fahuo")
	public String fahuo(Order order, Model model) {
		order.setState(Sys.Ostatus.DSH);
		order.setFts(DateUtils.DateTimeToString(new Date()));
		orderService.update(order);
		Order o = orderService.findOneByOrderNumber(order.getOrdernumber());

		return list(o, model);
	}
	@RequestMapping("plfahuo")
	public String plFahuo(Order order, Model model) {
		String ids = order.getIds();
		String oid[] = ids.split(",");
		for (String id : oid) {
			Order o = new Order();
			o.setOrdernumber(id);
			o.setState(Sys.Ostatus.DSH);
			o.setFts(DateUtils.DateTimeToString(new Date()));
			orderService.update(o);
		}

		return "redirect:/admin/order_list?ostatus="+Sys.Ostatus.DSH;
	}

	@RequestMapping("tuikuan")
	public String tuikuan(Order order, Model model) {
		order.setState(Sys.Ostatus.THTK);
		order.setTts(DateUtils.DateTimeToString(new Date()));
		orderService.update(order);
		Order o = orderService.findOneByOrderNumber(order.getOrdernumber());
		Xiangqing xiangqing = xiangqingService.findById(o.getXid());
		xiangqing.setX_number(xiangqing.getX_number()+o.getNumber());
		xiangqingService.update(xiangqing);

		return list(o, model);
	}

	@RequestMapping("pltuikuan")
	public String plTuikuan(Order order, Model model) {
		String ids = order.getIds();
		String oid[] = ids.split(",");
		for (String id : oid) {
			Order o = new Order();
			o.setOid(Integer.parseInt(id));
			o.setState(Sys.Ostatus.THTK);
			o.setTts(DateUtils.DateTimeToString(new Date()));
			orderService.update(o);

			Order o2 = orderService.findOneByOrderNumber(o.getOid()+"");
			Xiangqing xiangqing = xiangqingService.findById(o2.getXid());
			xiangqing.setX_number(xiangqing.getX_number()+o2.getNumber());
			xiangqingService.update(xiangqing);

		}
		return "redirect:/admin/order_list?ostatus="+Sys.Ostatus.TKCG;
	}


	
}
