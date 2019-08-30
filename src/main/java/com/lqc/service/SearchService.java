package com.lqc.service;

import com.lqc.entity.Product;
import org.springframework.context.annotation.Bean;

import java.util.List;


public interface SearchService {
    public List<Product> search(String keyword);
}
