package com.example.demo.dao;

import com.example.demo.entity.SwipePic;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SwipePicDao {

    void insertSwipePic(SwipePic swipePic);

    List<SwipePic> listSwipePic();
}
