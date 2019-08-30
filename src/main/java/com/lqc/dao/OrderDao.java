package com.lqc.dao;

import com.lqc.entity.Order;

import java.util.List;

public interface OrderDao {
    List<Order> getOrdersByUsername(String username);

    Order getOrder(int orderId);

    void insertOrder(Order order);

    void insertOrderStatus(Order order);

    void getOrderId();

    void setOrderId(Order order);

}
