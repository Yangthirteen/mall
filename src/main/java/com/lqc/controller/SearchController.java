package com.lqc.controller;

import com.lqc.entity.Product;
import com.lqc.service.Impl.SearchServiceImpl;
import com.lqc.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SearchController {

    @Resource
    SearchService searchService = null;

    @RequestMapping("search")
    public String search(String keyword, HttpServletRequest request){
        List<Product> productList=searchService.search(keyword);
        request.setAttribute("productList",productList);
        //for(int i=0;i<productList.size();i++){
        //    System.out.println(productList.get(i).getProduct_id());
        //}
        return "search";
    }

}
