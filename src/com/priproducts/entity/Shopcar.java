package com.priproducts.entity;

public class Shopcar {
    private int gid;
    private int uid;
    private int cid;
    private int number; //数量
    private String cname; //名称
    private String cprice; //价格
    private String cimg; //图片

    public Shopcar() {
    }

    public Shopcar(int gid, int uid, int cid, int number, String cname, String cprice, String cimg) {
        this.gid = gid;
        this.uid = uid;
        this.cid = cid;
        this.number = number;
        this.cname = cname;
        this.cprice = cprice;
        this.cimg = cimg;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCprice() {
        return cprice;
    }

    public void setCprice(String cprice) {
        this.cprice = cprice;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }

    @Override
    public String toString() {
        return "shopcar{" +
                "gid=" + gid +
                ", uid=" + uid +
                ", cid=" + cid +
                ", number=" + number +
                ", cname='" + cname + '\'' +
                ", cprice='" + cprice + '\'' +
                ", cimg='" + cimg + '\'' +
                '}';
    }
}
