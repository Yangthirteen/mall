package com.lqc.service.Impl;

import com.lqc.dao.CartDao;
import com.lqc.entity.Cart;
import com.lqc.entity.Order;
import com.lqc.entity.Product;
import com.lqc.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CartServiceImpl implements CartService {

    @Resource
    CartDao cartDao=null;

    @Override
    public void addProductToCart(Product product) {
        cartDao.addProductToCart(product);
    }

    @Override
    public void updateCart() {
        cartDao.updateCart();
    }

    @Override
    public List<Cart> viewCart() {
        return cartDao.viewCart();
    }
}
