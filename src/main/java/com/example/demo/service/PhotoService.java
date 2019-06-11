package com.example.demo.service;

import com.example.demo.dao.PhotoDao;
import com.example.demo.entity.Photo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PhotoService {
    @Resource
    private PhotoDao photoDao;

    public void add(Photo photo) {
        photoDao.insert(photo);
    }

    public List<Photo> list(long cateId) {
        Map<String, Object> param = new HashMap<>();
        param.put("cateId", cateId);
        return photoDao.list(param);
    }
}
