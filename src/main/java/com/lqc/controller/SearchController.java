package com.lqc.controller;

import com.lqc.entity.Product;
import com.lqc.service.Impl.SearchServiceImpl;
import com.lqc.service.ProductService;
import com.lqc.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class SearchController {

    @Resource
    private SearchService searchService = null;
    @RequestMapping("search")
    public String doSearch(@RequestParam("keyword") String keyword, Model model,HttpServletRequest request){

        List<Map<String,Object>> productList = searchService.search(keyword);
        model.addAttribute("productList",productList);
        return "search";
    }

}
