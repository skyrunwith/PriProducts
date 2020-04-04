package com.priproducts.util;

import com.priproducts.entity.Order;
import com.priproducts.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Timer;
import java.util.TimerTask;

@Component
public class OrderUtils {
	
	static OrderService oService ;
	
	@Autowired
	public OrderUtils(OrderService oService) {
		OrderUtils.oService = oService;
	}
	
	public static void orderClose(Order order) {
		Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			
			@Override
			public void run() {
				
				Order o = oService.findOne(order.getOrdernumber());
				if(Sys.Ostatus.DFK.equals(o.getState())) {
					order.setState(Sys.Ostatus.YSX);
					oService.update(order);
				}
				timer.cancel();
			}
		}, 24*60*60*1000);
	}  
}
