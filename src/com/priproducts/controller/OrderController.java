package com.priproducts.controller;

import com.priproducts.entity.Address;
import com.priproducts.entity.Order;
import com.priproducts.entity.User;
import com.priproducts.service.AddressService;
import com.priproducts.service.OrderService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RequestMapping("/dingdanzhongxin")
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private AddressService addressService;

    @RequestMapping("buy")
    public String buy(Order order, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        order.setUid(user.getUid());
        Address address = addressService.find(order.getAid()+"");
        List<Order> list = orderService.findByUid(order);
        model.addAttribute("address", address);
        session.setAttribute("olist", list);
        double totalPrice = 0;
        for(Order order1: list){
            totalPrice += order1.getPaynumber();
        }
        session.setAttribute("totalPrice", totalPrice);
        return "redirect:/shouye/zhifu";
    }

    @RequestMapping("del")
    public void del(Order order) {
        order.setState(4);
        orderService.update(order);
    }

    @RequestMapping("confirm")
    public String confirm(Order order) {
        order.setState(Sys.Ostatus.DPJ);;
        orderService.update(order);
        return "redirect:/shouye/dingdanzhongxin?state="+Sys.Ostatus.DPJ;
    }

    @RequestMapping("tuihuo")
    public void tuihuo(Order o) {
        o.setState(Sys.Ostatus.TKZ);
        o.setTts(DateUtils.DateTimeToString(new Date()));
        orderService.update(o);
    }

    @RequestMapping("tuikuanhuo")
    public void tuikuanhuo(Order o) {
        o.setState(Sys.Ostatus.THTK);
        o.setTts(DateUtils.DateTimeToString(new Date()));
        orderService.update(o);
    }


    @RequestMapping("test")
    public void test(HttpSession session){
        List<Order> orders = new ArrayList<>();
        Order order = orderService.findOneByOrderNumber("5943885652383492");
        orders.add(order);
        session.setAttribute("olist", orders);
    }
}
