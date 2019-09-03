package com.lqc.service.Impl;

import com.lqc.dao.SearchDao;
import com.lqc.entity.Product;
import com.lqc.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class SearchServiceImpl implements SearchService {
    @Resource
    private SearchDao searchDao=null;

    @Override
    public List<Map<String,Object>> search(String keyword) {
        List<Map<String,Object>> productList=null;
        productList=searchDao.getProductList(keyword);
        return productList;
    }
}
