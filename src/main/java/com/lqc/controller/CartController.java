package com.lqc.controller;

import com.lqc.entity.Cart;
import com.lqc.entity.Product;
import com.lqc.service.CartService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CartController {

    @Resource
    CartService cartService=null;

    @RequestMapping("addProductToCart")
    public String addProductToCart(Product product){
        cartService.addProductToCart(product);
        return "cart";
    }

    @RequestMapping("viewCart")
    public String viewCart(HttpServletRequest request){
        List<Cart> productList=cartService.viewCart();
        request.setAttribute("cart",productList);
        return "cart";
    }

    @RequestMapping("updateCart_test")
    public String updateCart(){
        cartService.updateCart();
        return "cart";
    }
}
