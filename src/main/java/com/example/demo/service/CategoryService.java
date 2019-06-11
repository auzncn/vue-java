package com.example.demo.service;

import com.example.demo.dao.CategoryDao;
import com.example.demo.entity.Category;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryService {
    @Resource
    private CategoryDao categoryDao;

    public void add(String cateName){
        Category category=new Category();
        category.setCateName(cateName);
        categoryDao.insert(category);
    }

    public List<Category> list(){
        return categoryDao.list();
    }
}
