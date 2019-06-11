package com.example.demo.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Table
@Entity
public class GoodsDesc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long goodsId;
    private String title;
    @Column(length = 10000)
    private String content;
}
