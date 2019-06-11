package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.News;
import com.example.demo.service.NewsService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;

@RestController
@RequestMapping(value = "/news", method = RequestMethod.POST)
public class NewsController {
    @Resource
    private NewsService newsService;

    @RequestMapping("/add")
    public ResultBean add(String title, String content, String picAddress) {
        News news = new News();
        news.setTitle(title);
        news.setContent(content);
        news.setPicAddress(picAddress);
        news.setClick(0);
        news.setCreateTime(new Date());
        System.out.println(picAddress);
        if (newsService.add(news)) {
            return ResultBean.getSuccess(null);
        }
        return ResultBean.getError("系统异常");

    }

    @RequestMapping("/list")
    public ResultBean list() {
        return ResultBean.getSuccess(null, newsService.list());

    }

    @RequestMapping("/getById")
    public ResultBean getById(Long id) {
        return ResultBean.getSuccess(null, newsService.getById(id));
    }
}
