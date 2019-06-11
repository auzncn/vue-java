package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.Photo;
import com.example.demo.service.PhotoService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/photo", method = RequestMethod.POST)
public class PhotoController {
    @Resource
    private PhotoService photoService;

    @RequestMapping("/add")
    public ResultBean add(Photo photo) {
        photoService.add(photo);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list(long cateId) {
        List<Photo> list = photoService.list(cateId);
        return ResultBean.getSuccess(null, list);
    }
}
