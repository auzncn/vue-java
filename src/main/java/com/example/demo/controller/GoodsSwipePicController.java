package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.GoodsSwipePic;
import com.example.demo.service.GoodsSwipePicService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/goodsSwipePic", method = RequestMethod.POST)
public class GoodsSwipePicController {
    @Resource
    private GoodsSwipePicService goodsSwipePicService;

    @RequestMapping("/add")
    public ResultBean add(GoodsSwipePic goodsSwipePic) {
        goodsSwipePicService.add(goodsSwipePic);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list(long goodsId) {
        return ResultBean.getSuccess(null, goodsSwipePicService.list(goodsId));
    }

}
