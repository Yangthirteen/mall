package com.lqc.dao;

import com.lqc.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

public interface SearchDao {
    public List<Map<String,Object>> getProductList(String keyword);

}


