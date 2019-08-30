package com.lqc.service.Impl;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    OrderDao orderDao=null;

    @Override
    public List<Order> getOrdersByUsername(String username) {
        return orderDao.getOrdersByUsername(username);
    }

    @Override
    public Order getOrder(int orderId) {
        return orderDao.getOrder(orderId);
    }

    @Override
    public void insertOrder(Order order) {
        orderDao.insertOrder(order);
    }

    @Override
    public void insertOrderStatus(Order order) {
        orderDao.insertOrderStatus(order);
    }

    @Override
    public void getOrderId() {
        orderDao.getOrderId();
    }

    @Override
    public void setOrderId(Order order) {
        orderDao.setOrderId(order);
    }
}
