package com.example.demo.service;

import com.example.demo.dao.PhotoCommentDao;
import com.example.demo.entity.PhotoComment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PhotoCommentService {
    @Resource
    private PhotoCommentDao photoCommentDao;

    public void insert(PhotoComment photoComment) {
        photoComment.setCreateTime(new Date());
        photoCommentDao.insert(photoComment);
    }

    public List<PhotoComment> list(Integer page, Integer rows, Long photoId) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", 0);
        map.put("rows", 10);
        if (page != null && rows != null) {
            map.put("start", (page - 1) * rows);
            map.put("rows", rows);
        }
        map.put("photoId", photoId);
        return photoCommentDao.list(map);
    }
}
