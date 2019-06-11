package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.Goods;
import com.example.demo.service.GoodsService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/goods", method = RequestMethod.POST)
public class GoodsController {
    @Resource
    private GoodsService goodsService;

    @RequestMapping("/add")
    public ResultBean add(@RequestBody Goods goods) {

        goodsService.add(goods);

        return ResultBean.getSuccess(null);

    }

    @RequestMapping("/list")
    public ResultBean list(Integer page, Integer rows) {
        List<Goods> list = goodsService.list(page, rows);
        return ResultBean.getSuccess(null, list);

    }

    @RequestMapping("/getById")
    public ResultBean getById(long goodsId) {
        return ResultBean.getSuccess(null, goodsService.getById(goodsId));
    }

}
