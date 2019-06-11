package com.example.demo.service;

import com.example.demo.dao.GoodsDao;
import com.example.demo.entity.Goods;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;

    public void add(Goods goods) {
        goods.setAddTime(new Date());
        goods.setClick(0);
        goodsDao.insert(goods);
    }

    public List<Goods> list(Integer page, Integer rows) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", 0);
        map.put("rows", 10);
        if (page != null && rows != null) {
            map.put("start", (page - 1) * rows);
            map.put("rows", rows);
        }
        return goodsDao.list(map);
    }

    public Goods getById(long goodsId) {
        return goodsDao.getById(goodsId);
    }
}
