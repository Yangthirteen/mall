package com.lqc.entity;

public class Cart {
    private int cartId;
    private int userId;
    private int productId;
    private int number;
    private String size;

    public int getCartId() {
        return cartId;
    }

    public int getNumber() {
        return number;
    }

    public int getUserId() {
        return userId;
    }

    public int getProductId() {
        return productId;
    }

    public String getSize() {
        return size;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
