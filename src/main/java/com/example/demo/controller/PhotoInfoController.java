package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.PhotoInfo;
import com.example.demo.service.PhotoInfoService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/photoInfo", method = RequestMethod.POST)
public class PhotoInfoController {
    @Resource
    private PhotoInfoService photoInfoService;

    @RequestMapping("/add")
    public ResultBean add(PhotoInfo photoInfo) {
        photoInfoService.add(photoInfo);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/getByPhotoId")
    public ResultBean getByPhotoId(long photoId) {
        return ResultBean.getSuccess(null, photoInfoService.getByPhotoId(photoId));
    }
}
