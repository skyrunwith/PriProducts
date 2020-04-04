package com.priproducts.controller.admin;

import com.priproducts.entity.Cmg;
import com.priproducts.entity.Order;
import com.priproducts.service.CmgService;
import com.priproducts.service.OrderService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/admin/cmg")
public class AdminCmgController {
	@Autowired
	private CmgService cmgService;
	@Autowired
	private OrderService oService;
	
	@RequestMapping("login")
	public String login(){
		return Sys.Common.admin+"/login";
	}
	@RequestMapping("loginIn")
	public String loginIn(Cmg cmg, Model model, HttpServletRequest request){
		System.out.println(cmg.getCname()+"------");
		Cmg c=cmgService.queryCmg(cmg);
		if(c==null){
			model.addAttribute("msg", "登录失败");
			return Sys.Common.admin+"/login";
		}else{
			String ts= DateUtils.DateTimeToString(new Date());
			cmgService.updateTs(ts, c.getCid()+"");
	        c.setTs(ts);   
			HttpSession session=request.getSession();
            session.setAttribute("cmg",c);
            
            Order o = new Order();
            o.setState(Sys.Ostatus.DFH);
            long countFH = oService.count(o);
            List<Order> orderFH = oService.findAll(o);
            o.setState(Sys.Ostatus.TKZ);
            long countTK = oService.count(o);
            o.setState(Sys.Ostatus.THTK);
            long countTHK = oService.count(o);
            session.setAttribute("orderFH",orderFH);
            session.setAttribute("countFH", countFH);
            session.setAttribute("countTK", countTK+countTHK);
            return "redirect:/"+Sys.Common.admin+"/index.jsp";
		}
	}
	
	@RequestMapping("mypanel")
	public String myPanel(Model model) {
		  Order o = new Order();
          o.setState(Sys.Ostatus.DFH);
          long countFH = oService.count(o);
          List<Order> orderFH = oService.findAll(o);
          o.setState(Sys.Ostatus.TKZ);
          long countTK = oService.count(o);
          o.setState(Sys.Ostatus.THTK);
          long countTHK = oService.count(o);
          model.addAttribute("orderFH",orderFH);
          model.addAttribute("countFH", countFH);
          model.addAttribute("countTK", countTK+countTHK);
		
		return "admin/mypa";
	}
}
