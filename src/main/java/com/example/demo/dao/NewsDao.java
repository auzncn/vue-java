package com.example.demo.dao;

import com.example.demo.entity.News;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface NewsDao {
    void insert(News news);
    List<Map<String,Object>> list();
    News getById(Long id);
}
