package com.example.demo.dao;

import com.example.demo.entity.Goods;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface GoodsDao {
    void insert(Goods goods);

    List<Goods> list(Map<String, Object> map);

    Goods getById(long goodsId);
}
