package com.example.demo.dto;

import lombok.Data;

@Data
public class ResultBean<T> {
    private String status;
    private String msg;
    private T data;

    private static final String ok = "OK";
    private static final String error = "ERROR";

    private ResultBean(String status, String msg) {
        this.status = status;
        this.msg = msg;
    }

    private ResultBean(String status, String msg, T data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }


    public static <T> ResultBean getSuccess(String msg) {
        return new ResultBean(ResultBean.ok, msg);
    }

    @SuppressWarnings("unchecked")
    public static <T> ResultBean getSuccess(String msg, T data) {
        return new ResultBean(ResultBean.ok, msg, data);
    }

    public static <T> ResultBean getError(String msg) {
        return new ResultBean(ResultBean.error, msg);
    }


}
