package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.service.SwipePicService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/swipe_pic", method = RequestMethod.POST)
public class SwipePicController {
    @Resource
    private SwipePicService swipePicService;

    @RequestMapping("/insert")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", paramType = "query", dataType = "String", required = true),
            @ApiImplicitParam(name = "address", paramType = "query", dataType = "String", required = true)
    })
    public ResultBean insert(String name, String address) {
        boolean b = swipePicService.insert(name, address);
        if (!b) {
            return ResultBean.getError("添加失败");
        }
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list() {
        return ResultBean.getSuccess(null, swipePicService.list());
    }
}
