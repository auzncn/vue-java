package com.example.demo.service;

import com.example.demo.dao.GoodsDescDao;
import com.example.demo.entity.GoodsDesc;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class GoodsDescService {
    @Resource
    private GoodsDescDao goodsDescDao;

    public GoodsDesc getByGoodsId(long goodsId) {
        return goodsDescDao.getByGoodsId(goodsId);
    }
}
