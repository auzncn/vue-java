package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.service.CategoryService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/category", method = RequestMethod.POST)
public class CategoryController {
    @Resource
    private CategoryService categoryService;

    @RequestMapping("/add")
    public ResultBean add(String cateName) {
        categoryService.add(cateName);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list() {
        return ResultBean.getSuccess(null, categoryService.list());
    }
}
