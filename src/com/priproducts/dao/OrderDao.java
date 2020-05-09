package com.priproducts.dao;



import com.priproducts.entity.Order;

import java.util.List;

public interface OrderDao {

    public void insert(Order order);
    public void update(Order order);
    public Order findOneByOrderNumber(String ordernumber);
    public List<Order> findAll(Order order);
    public List<Order> findByUid(Order order);
    public long count(Order order);

    Order findOneById(String oid);
}