package com.example.demo.service;

import com.example.demo.dao.SwipePicDao;
import com.example.demo.entity.SwipePic;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SwipePicService {
    @Resource
    private SwipePicDao swipePicDao;

    public boolean insert(String name, String diskAddress) {
        SwipePic swipePic = new SwipePic();
        swipePic.setName(name);
        swipePic.setDiskAddress(diskAddress);
        swipePicDao.insertSwipePic(swipePic);
        return true;
    }

    public List<SwipePic> list() {
        return swipePicDao.listSwipePic();
    }
}
