package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.NewsComment;
import com.example.demo.service.NewsCommentService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/newsComment", method = RequestMethod.POST)
public class NewsCommentController {
    @Resource
    private NewsCommentService newsCommentService;

    @RequestMapping("/add")
    public ResultBean add(NewsComment newsComment) {
        newsCommentService.insert(newsComment);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list(Integer page, Integer rows, Long newsId) {
        if (newsId == null) {
            return ResultBean.getError("你要看哪个新闻的评论？？");
        }
        List<NewsComment> list = newsCommentService.list(page, rows, newsId);
        return ResultBean.getSuccess(null, list);
    }
}
