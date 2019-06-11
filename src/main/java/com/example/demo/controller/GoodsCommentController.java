package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.GoodsComment;
import com.example.demo.entity.NewsComment;
import com.example.demo.service.GoodsCommentService;
import com.example.demo.service.NewsCommentService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/goodsComment", method = RequestMethod.POST)
public class GoodsCommentController {
    @Resource
    private GoodsCommentService goodsCommentService;

    @RequestMapping("/add")
    public ResultBean add(GoodsComment goodsComment) {
        goodsCommentService.insert(goodsComment);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list(Integer page, Integer rows, Long goodsId) {
        if (goodsId == null) {
            return ResultBean.getError("你要看哪个新闻的评论？？");
        }
        List<GoodsComment> list = goodsCommentService.list(page, rows, goodsId);
        return ResultBean.getSuccess(null, list);
    }
}
