package com.lqc.dao;

import com.lqc.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;

public interface SearchDao {
    public List<Product> getProductList(String keyword);


}


