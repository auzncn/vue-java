package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.service.GoodsDescService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/goodsDesc", method = RequestMethod.POST)
public class GoodsDescController {
    @Resource
    private GoodsDescService goodsDescService;

    @RequestMapping("/getByGoodsId")
    public ResultBean getByGoodsId(long goodsId) {
        return ResultBean.getSuccess(null, goodsDescService.getByGoodsId(goodsId));
    }
}
