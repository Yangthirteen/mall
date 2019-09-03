package com.lqc.service;

import com.lqc.entity.Product;
import org.springframework.context.annotation.Bean;

import java.util.List;
import java.util.Map;


public interface SearchService {
    public List<Map<String,Object>> search(String keyword);
}
