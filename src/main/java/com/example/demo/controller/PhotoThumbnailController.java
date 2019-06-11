package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.PhotoThumbnail;
import com.example.demo.service.PhotoThumbnailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/photoThumbnail", method = RequestMethod.POST)
public class PhotoThumbnailController {
    @Resource
    private PhotoThumbnailService photoThumbnailService;

    @RequestMapping("/add")
    public ResultBean add(PhotoThumbnail photoThumbnail) {
        photoThumbnailService.add(photoThumbnail);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/listByPhotoId")
    public ResultBean listByPhotoId(long photoId) {
        return ResultBean.getSuccess(null, photoThumbnailService.listByPhotoId(photoId));
    }
}
