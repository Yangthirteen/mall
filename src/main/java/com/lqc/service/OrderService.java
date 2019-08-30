package com.lqc.service;


import com.lqc.entity.Order;

import java.util.List;

public interface OrderService {
    List<Order> getOrdersByUsername(String username);

    Order getOrder(int orderId);

    void insertOrder(Order order);

    void insertOrderStatus(Order order);

    void getOrderId();

    void setOrderId(Order order);
}
