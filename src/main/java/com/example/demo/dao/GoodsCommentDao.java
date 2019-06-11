package com.example.demo.dao;

import com.example.demo.entity.GoodsComment;
import com.example.demo.entity.NewsComment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface GoodsCommentDao {
    void insert(GoodsComment goodsComment);
    List<GoodsComment> list(Map<String, Object> map);
}
