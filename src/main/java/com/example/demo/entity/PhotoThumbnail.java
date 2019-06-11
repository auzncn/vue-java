package com.example.demo.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Table
@Entity
@Data
@ToString
public class PhotoThumbnail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long photoId;
    private String url;
}
