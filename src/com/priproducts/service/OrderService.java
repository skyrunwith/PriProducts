package com.priproducts.service;

import com.priproducts.entity.Order;

import java.util.List;

public interface OrderService {
    int addOrder(int uid);  //添加订单
    boolean updateOrder(Order order); //更新
    Order findOneOrder(int oid); //查询
    List<Order> findOneOrderByUid(int uid, int state); //通过id查询
    public void insert(Order order);
    public List<Order> findAll(Order order);
    public List<Order> findByUid(Order order);
    public void update(Order order);
    public Order findOneByOrderNumber(String ordernumber);
    public long count(Order order);

    public Order findOneById(String oid);

}
