package com.example.demo.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table
@Data
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long goodsId;
    private int number;
    private String title;
    private double unitPrice;
    private String url;
    private int selected;
}
