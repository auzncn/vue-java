package com.example.demo.dao;

import com.example.demo.entity.GoodsDesc;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsDescDao {
    GoodsDesc getByGoodsId(long goodsId);
}
