package com.priproducts.controller;

import com.priproducts.entity.*;
import com.priproducts.service.AddressService;
import com.priproducts.service.OrderService;
import com.priproducts.service.ShopcarService;
import com.priproducts.service.XiangqingService;
import com.priproducts.util.DateUtils;
import com.priproducts.util.OidUtils;
import com.priproducts.util.OrderUtils;
import com.priproducts.util.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/shouye")
public class ShopCarController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ShopcarService shopcarService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private XiangqingService xiangqingService;
    Page page=new Page();
    @RequestMapping("toShopCar")
    public String toCart(HttpServletRequest request, Shopcar car, Model model) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null) {
            return "redirect:/shouye/login.jsp";
        }

        car.setUid(user.getUid());

        if(car.getPageNo() == null) car.setPageNo(1);
        if(car.getPageSize() == null) car.setPageSize(3);

        page.setPageNo(car.getPageNo());
        page.setPageSize(car.getPageSize());
        page.setCount(shopcarService.countByUid(user.getUid()+""));
        page.setPages(page.getCount(), page.getPageSize());
        page.setStartRow(page.getPageNo(), page.getPageSize());

        car.setStartRow(page.getStartRow());
        List<Shopcar> car_list = shopcarService.findByUid(car);

        model.addAttribute("car_list",car_list);
        model.addAttribute("page", page);
        model.addAttribute("car", car);

        return "shouye/gouwuche";
    }

    @RequestMapping("shoppingcart")
    public void shoppingcart(String xid, String number, HttpServletResponse response, HttpServletRequest request)
            throws IOException {
        PrintWriter pw = response.getWriter();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null) {
            pw.write("0");
            pw.flush();
            pw.close();
            return;
        }

        Shopcar cart = new Shopcar();
        cart.setXid(Integer.parseInt(xid));
        cart.setNumber(Integer.parseInt(number));
        cart.setUid(user.getUid());
        cart.setCts(new Date());

        List<Shopcar> slist = shopcarService.findByUid(cart);
        if(slist.isEmpty()) {
            shopcarService.add(cart);
        }else {
            for (int i = 0; i < slist.size(); i++) {
                Shopcar s = slist.get(i);
                cart.setNumber(s.getNumber()+cart.getNumber());
                shopcarService.updateNumbers(cart);
            }
        }
        pw.write("1");
        pw.flush();
        pw.close();
    }

    @RequestMapping("delete")
    @ResponseBody
    public void delete(Shopcar cart) {
        shopcarService.deleteByGid(cart);
    }
    
    @RequestMapping("deleteall")
    @ResponseBody
    public void deleteAll(String uid) {
        shopcarService.deleteByUid(uid);;
    }

    @RequestMapping("upNumbers")
    @ResponseBody
    public void upNumbers(Shopcar cart) {
        shopcarService.updateNumbers(cart);
    }

    @RequestMapping("tobuy")
    public String tobuy(Shopcar cart,Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        Address address = addressService.find(user.getAid()+"");
        model.addAttribute("address", address);
        model.addAttribute("ids", cart.getIds());

        List<Order> oList = new ArrayList<Order>();
        String[] ids = cart.getIds().split(",");
        double totalPrice = 0;
        for (String gid : ids) {
            Shopcar c = new Shopcar();
            c.setUid(user.getUid());
            c.setXid(Integer.parseInt(gid));
            Shopcar one = shopcarService.findOne(c);
            shopcarService.deleteBySid(one.getSid()+"");

            Order o = new Order();

            o.setImg(one.getCimg());
            o.setPaynumber(one.getCprice() * one.getNumber());
            o.setNumber(one.getNumber());
            o.setX_name(one.getXname());

            o.setOrdernumber(OidUtils.oidRandom());
            o.setCreatetime(DateUtils.DateTimeToString(new Date()));
            o.setAid(user.getAid());
            o.setUid(user.getUid());
            o.setXid(one.getXid());
            o.setNumber(one.getNumber());
            o.setState(Sys.Ostatus.DFK);
            orderService.insert(o);
            OrderUtils.orderClose(o);
            oList.add(o);
            totalPrice += o.getPaynumber();
        }

        session.setAttribute("olist", oList);
        session.setAttribute("totalPrice", totalPrice);
        return "redirect:/shouye/zhifu";
    }

    @RequestMapping("zhifu")
    public String zhifu(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        Address address = addressService.find(user.getAid()+"");
        model.addAttribute("address", address);
        return "shouye/zhifu";
    }

    @RequestMapping("changeAddress")
    public String changeAddress(String aid,Model model) {
        Address address_info = addressService.find(aid);
        model.addAttribute("address", address_info);
        return "shouye/zhifu";
    }

    @RequestMapping("confirm")
    public String confirm(HttpServletRequest request,String aid) {
        HttpSession session = request.getSession();
        List<Order> oList = (List<Order>)session.getAttribute("olist");

        for (Order o : oList) {
            o.setState(Sys.Ostatus.DFH);
            o.setZts(DateUtils.DateTimeToString(new Date()));

            Xiangqing xiangqing = new Xiangqing();
            Xiangqing x = xiangqingService.findById(o.getXid());
            xiangqing.setXid(x.getXid());
            xiangqing.setX_number(x.getX_number()-o.getNumber());

            xiangqingService.update(xiangqing);
            orderService.update(o);;
        }
        return "redirect:/shouye/dingdanzhongxin?state="+Sys.Ostatus.DFH;
    }
}
