package com.example.demo.service;

import com.example.demo.dao.GoodsCommentDao;
import com.example.demo.dao.NewsCommentDao;
import com.example.demo.entity.GoodsComment;
import com.example.demo.entity.NewsComment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodsCommentService {
    @Resource
    private GoodsCommentDao goodsCommentDao;

    public void insert(GoodsComment goodsComment) {
        goodsComment.setCreateTime(new Date());
        goodsCommentDao.insert(goodsComment);
    }

    public List<GoodsComment> list(Integer page, Integer rows, Long goodsId) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", 0);
        map.put("rows", 10);
        if (page != null && rows != null) {
            map.put("start", (page - 1) * rows);
            map.put("rows", rows);
        }
        map.put("goodsId", goodsId);
        return goodsCommentDao.list(map);
    }
}
