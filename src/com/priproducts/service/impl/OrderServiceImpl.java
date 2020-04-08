package com.priproducts.service.impl;

import com.priproducts.dao.OrderDao;
import com.priproducts.entity.Order;
import com.priproducts.service.OrderService;
import com.priproducts.util.C3P0Util;
import com.priproducts.util.SQLAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.*;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Override
    public int addOrder(int uid) {
        int newId = 0;
        Connection conn = C3P0Util.getConnection();
        String ordernumber = new Date().getTime()+""+uid;
        Timestamp createtime = new Timestamp(new Date().getTime());
        Timestamp updatetime = new Timestamp(new Date().getTime());

        String sql = "insert into orders (ordernumber,state,createtime,updatetime,uid,flag) value (?,0,?,?,?,0)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,ordernumber);
            ps.setTimestamp(2,createtime);
            ps.setTimestamp(3,updatetime);
            ps.setInt(4,uid);

            int count = ps.executeUpdate();
            if (count>0){
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()){
                    newId =  rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        C3P0Util.close(conn);
        return newId;
    }

    @Override
    public boolean updateOrder(Order order) {
        Connection conn = C3P0Util.getConnection();
        String sql = "update orders set ordernumber=?,paynumber=?,state=?," +
                "createtime=?," + "updatetime=?,uid=?,address=?,flag=? where oid=?";
        Object[] paras = {order.getOrdernumber(),order.getPaynumber(),order.getState(),
                order.getCreatetime(),order.getUpdatetime(),order.getUid(),
                order.getAddress(),order.getFlag(),};
        boolean flag = SQLAdapter.sqlUpdate(conn, sql, paras);

        C3P0Util.close(conn);
        return flag;
    }

    @Override
    public Order findOneOrder(int oid) {
        Connection conn = C3P0Util.getConnection();
        String sql = "select * from orders where id=?";
        Object[] paras = {oid};
        Order order = SQLAdapter.sqlQueryOneRow(conn, sql, paras, Order.class);

        C3P0Util.close(conn);
        return order;
    }

    @Override
    public List<Order> findOneOrderByUid(int uid, int state) {
        Connection conn = C3P0Util.getConnection();
        String sql = "select * from orders where uid=? and state=?";
        Object[] paras = {uid,state};
        List<Order> orders = SQLAdapter.sqlQueryRows(conn, sql, paras, Order.class);

        C3P0Util.close(conn);
        return orders;
    }

    @Autowired
    private OrderDao orderDao;

    @Override
    public void insert(Order order) {
        orderDao.insert(order);
    }

    @Override
    public List<Order> findAll(Order order) {
        return orderDao.findAll(order);
    }

    @Override
    public List<Order> findByUid(Order order) {
        return orderDao.findByUid(order);
    }

    @Override
    public void update(Order order) {
        orderDao.update(order);
    }

    @Override
    public Order findOneByOrderNumber(String oid) {
        return orderDao.findOneByOrderNumber(oid);
    }

    @Override
    public long count(Order order) {
        return orderDao.count(order);
    }

}

