package com.priproducts.dao;



import com.priproducts.entity.Order;

import java.util.List;

public interface OrderDao {
    int addOrder(int uid);  //添加订单
    boolean updateOrder(Order order); //更新
    Order findOneOrder(int oid); //查询
    List<Order> findOneOrderByUid(int uid, int state); //通过id查询

}