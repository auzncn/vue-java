package com.example.demo.service;

import com.example.demo.dao.GoodsSwipePicDao;
import com.example.demo.entity.GoodsSwipePic;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsSwipePicService {
    @Resource
    private GoodsSwipePicDao goodsSwipePicDao;

    public void add(GoodsSwipePic goodsSwipePic) {
        goodsSwipePicDao.insert(goodsSwipePic);
    }

    public List<GoodsSwipePic> list(long goodsId) {
        return goodsSwipePicDao.list(goodsId);
    }
}
