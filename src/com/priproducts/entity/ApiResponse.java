package com.priproducts.entity;

public class ApiResponse {
    private int code;

    private Object data;

    private String msg;

    public ApiResponse(int code, Object data, String msg) {
        this.code = code;
        this.data = data;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
