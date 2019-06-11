package com.example.demo.dao;

import com.example.demo.entity.Cart;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CartDao {
    int insert(Cart cart);
    List<Cart> list();
    int updateByGoodsId(Map<String,Object> map);
    Cart selectByGoodsId(long goodsId);
    int updateByFinalNum(Map<String,Object> map);
    int deleteById(long id);
    int updateSelected(Map<String,Object> map);
}
