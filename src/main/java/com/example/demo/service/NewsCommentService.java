package com.example.demo.service;

import com.example.demo.dao.NewsCommentDao;
import com.example.demo.entity.NewsComment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewsCommentService {
    @Resource
    private NewsCommentDao newsCommentDao;

    public void insert(NewsComment newsComment) {
        newsComment.setCreateTime(new Date());
        newsCommentDao.insert(newsComment);
    }

    public List<NewsComment> list(Integer page, Integer rows, Long newsId) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", 0);
        map.put("rows", 10);
        if (page != null && rows != null) {
            map.put("start", (page - 1) * rows);
            map.put("rows", rows);
        }
        map.put("newsId", newsId);
        return newsCommentDao.list(map);
    }
}
