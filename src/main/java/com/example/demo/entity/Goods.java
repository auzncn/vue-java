package com.example.demo.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table
public class Goods {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private Date addTime;
    private String remark;
    private int click;
    private String imgUrl;
    private double sellPrice;
    private double marketPrice;
    private int stockQuantity;
    private String goodsNo;

}
