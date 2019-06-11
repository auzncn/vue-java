package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.PhotoComment;
import com.example.demo.service.PhotoCommentService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(value = "/photoComment", method = RequestMethod.POST)
public class PhotoCommentController {
    @Resource
    private PhotoCommentService photoCommentService;

    @RequestMapping("/add")
    public ResultBean add(PhotoComment photoComment) {
        photoCommentService.insert(photoComment);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list(Integer page, Integer rows, Long photoId) {
        if (photoId == null) {
            return ResultBean.getError("你要看哪个图片的评论？？");
        }
        List<PhotoComment> list = photoCommentService.list(page, rows, photoId);
        return ResultBean.getSuccess(null, list);
    }
}
