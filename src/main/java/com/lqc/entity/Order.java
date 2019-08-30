package com.lqc.entity;

public class Order {

    private int orderId;
    private int userId;
    private String phone;
    private String address;
    private int productId;
    private int number;

    public int getProductId() {
        return productId;
    }

    public int getUserId() {
        return userId;
    }

    public int getOrderId() {
        return orderId;
    }

    public int getNumber() {
        return number;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
}
