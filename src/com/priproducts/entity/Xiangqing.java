package com.priproducts.entity;

public class Xiangqing {
    private int xid;
    private String x_name; //名称
    private String kname; //种类
    private String x_img; //图片
    private String x_leixing; //类型
    private String x_qishou; //起售
    private String x_huanjing; //环境
    private String x_price; //单价
    private String x_number; //库存
    private int status; //状态
    private String x_time; //创建时间
    private String x_creattime; //上架时间

    public Xiangqing() {
    }

    public Xiangqing(int xid, String x_name, String kname, String x_img, String x_leixing, String x_qishou, String x_huanjing, String x_price, String x_number, int status, String x_time, String x_creattime) {
        this.xid = xid;
        this.x_name = x_name;
        this.kname = kname;
        this.x_img = x_img;
        this.x_leixing = x_leixing;
        this.x_qishou = x_qishou;
        this.x_huanjing = x_huanjing;
        this.x_price = x_price;
        this.x_number = x_number;
        this.status = status;
        this.x_time = x_time;
        this.x_creattime = x_creattime;
    }

    public int getXid() {
        return xid;
    }

    public void setXid(int xid) {
        this.xid = xid;
    }

    public String getX_name() {
        return x_name;
    }

    public void setX_name(String x_name) {
        this.x_name = x_name;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

    public String getX_img() {
        return x_img;
    }

    public void setX_img(String x_img) {
        this.x_img = x_img;
    }

    public String getX_leixing() {
        return x_leixing;
    }

    public void setX_leixing(String x_leixing) {
        this.x_leixing = x_leixing;
    }

    public String getX_qishou() {
        return x_qishou;
    }

    public void setX_qishou(String x_qishou) {
        this.x_qishou = x_qishou;
    }

    public String getX_huanjing() {
        return x_huanjing;
    }

    public void setX_huanjing(String x_huanjing) {
        this.x_huanjing = x_huanjing;
    }

    public String getX_price() {
        return x_price;
    }

    public void setX_price(String x_price) {
        this.x_price = x_price;
    }

    public String getX_number() {
        return x_number;
    }

    public void setX_number(String x_number) {
        this.x_number = x_number;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getX_time() {
        return x_time;
    }

    public void setX_time(String x_time) {
        this.x_time = x_time;
    }

    public String getX_creattime() {
        return x_creattime;
    }

    public void setX_creattime(String x_creattime) {
        this.x_creattime = x_creattime;
    }

    @Override
    public String toString() {
        return "xiangqing{" +
                "xid=" + xid +
                ", x_name='" + x_name + '\'' +
                ", kname='" + kname + '\'' +
                ", x_img='" + x_img + '\'' +
                ", x_leixing='" + x_leixing + '\'' +
                ", x_qishou='" + x_qishou + '\'' +
                ", x_huanjing='" + x_huanjing + '\'' +
                ", x_price='" + x_price + '\'' +
                ", x_number='" + x_number + '\'' +
                ", status=" + status +
                ", x_time='" + x_time + '\'' +
                ", x_creattime='" + x_creattime + '\'' +
                '}';
    }
}
