package com.example.demo.dao;

import com.example.demo.entity.GoodsSwipePic;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsSwipePicDao {
    void insert(GoodsSwipePic goodsSwipePic);

    List<GoodsSwipePic> list(long goodsId);
}
