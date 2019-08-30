package com.lqc.service.Impl;

import com.lqc.dao.SearchDao;
import com.lqc.entity.Product;
import com.lqc.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {
    @Resource
    private SearchDao searchDao=null;

    @Override
    public List<Product> search(String keyword) {
        List<Product> productList=null;
        productList=searchDao.getProductList(keyword);
        return productList;
    }
}
