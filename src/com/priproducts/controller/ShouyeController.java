package com.priproducts.controller;

import com.priproducts.entity.*;
import com.priproducts.service.DianpuService;
import com.priproducts.service.KindService;
import com.priproducts.service.OrderService;
import com.priproducts.service.XiangqingService;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/shouye")
@Controller
public class ShouyeController {

    @Autowired
    private XiangqingService xiangqingService;

    @Autowired
    private KindService kindService;

    @Autowired
    private DianpuService dianpuService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("/index")
    public String shouye(HttpSession session, Model model){
        List<Xiangqing> xiangqingList = xiangqingService.findXiangqingTop8();

        model.addAttribute("xiangqingList", xiangqingList);
        return "shouye/index";
    }

    @RequestMapping("shangcheng")
    public String shangcheng(HttpSession session, Integer kid){
        List<Kind> kindList = kindService.findAllKind();
        session.setAttribute("kindList", kindList);
        List<Dianpu> dianpuList = dianpuService.findAllDianpu(kid);
        session.setAttribute("dianpuList", dianpuList);
        return "shouye/shangcheng";
    }

    @RequestMapping("searchShangcheng")
    public String searchShangcheng(HttpSession session, String kname) {
        List<Kind> kindList = kindService.findAllKind();
        session.setAttribute("kindList", kindList);
        List<Kind> kindListSl = kindService.findByName(kname);
        if (!CollectionUtils.isEmpty(kindListSl)) {
//            return new ApiResponse(0, kindList, "")
            List<Dianpu> dianpuList = new ArrayList<>();
            for (Kind kind : kindListSl) {
                dianpuList.addAll(dianpuService.findAllDianpu(kind.getKid()));
            }
            session.setAttribute("dianpuList", dianpuList);
        }else{
            List<Dianpu> dianpuList = new ArrayList<>();
            for (Kind kind : kindList) {
                dianpuList.addAll(dianpuService.findAllDianpu(kind.getKid()));
            }
            session.setAttribute("dianpuList", dianpuList);
        }
        return "shouye/shangcheng";
    }

    @RequestMapping("register")
    public String toRegistry(HttpSession session){
        ImageCode imageCode = LoginController.createImageCode();
        session.setAttribute(LoginController.SESSION_REGISTRY_KEY_IMAGE_CODE, imageCode);
        return "shouye/register";
    }

    @RequestMapping("{id}")
    public String detail(Model model, @PathVariable int id){
        Xiangqing xiangqing = xiangqingService.findOne(id);
        model.addAttribute("xiangqing", xiangqing);
        return "shouye/xiangqing";
    }

    @RequestMapping("/dingdanzhongxin")
    public String dingdanzhongxin(HttpSession session, Model model,Order paramOrder){
        User user = (User) session.getAttribute("user");
        Order order = new Order();
        order.setState(paramOrder.getState());
        order.setUid(user.getUid());
        order.setUsername(user.getUsername());
        if(order.getPageNo() == null) order.setPageNo(1);
        if(order.getPageSize() == null) order.setPageSize(3);

        long count = 0;
        if(order.getState() !=null && 5 == order.getState()) {
            count = orderService.count(order);
            order.setState(Sys.Ostatus.THTK);
            count += orderService.count(order);
            order.setState(Sys.Ostatus.TKCG);
            count += orderService.count(order);
            order.setState(Sys.Ostatus.TKZ);
        }else {
            count = orderService.count(order);
        }
        Page page = new Page();
        page.setCount(count);
        page.setPageNo(order.getPageNo());
        page.setPageSize(order.getPageSize());
        page.setPages(page.getCount(), page.getPageSize());
        page.setStartRow(page.getPageNo(), page.getPageSize());

        order.setStartRow(page.getStartRow());

        List<Order> order_list = orderService.findAll(order);

        model.addAttribute("order", order);
        model.addAttribute("order_list", order_list);
        model.addAttribute("page", page);
        return "shouye/dingdanzhongxin";
    }


}
