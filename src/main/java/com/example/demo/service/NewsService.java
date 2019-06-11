package com.example.demo.service;

import com.example.demo.dao.NewsDao;
import com.example.demo.entity.News;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewsService {
    @Resource
    private NewsDao newsDao;

    public boolean add(News news) {
        try {
            newsDao.insert(news);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public Object list() {
        return newsDao.list();
    }

    public News getById(Long id) {
        return newsDao.getById(id);
    }
}
