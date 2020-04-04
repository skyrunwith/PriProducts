package com.priproducts.entity;

public class Dianpu {
    private int sid;
    private String sname; //店铺名
    private String sdiandengji; //店铺等级
    private String saddress; //店铺地址
    private String stel; //电话
    private int kid; //类型
    private String simg; //图片
    private int status; //状态
    private String time; //创建时间

    public Dianpu() {
    }

    public Dianpu(int sid, String sname, String sdiandengji, String saddress, String stel, int kid, String simg, int status, String time) {
        this.sid = sid;
        this.sname = sname;
        this.sdiandengji = sdiandengji;
        this.saddress = saddress;
        this.stel = stel;
        this.kid = kid;
        this.simg = simg;
        this.status = status;
        this.time = time;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSdiandengji() {
        return sdiandengji;
    }

    public void setSdiandengji(String sdiandengji) {
        this.sdiandengji = sdiandengji;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getStel() {
        return stel;
    }

    public void setStel(String stel) {
        this.stel = stel;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public String getSimg() {
        return simg;
    }

    public void setSimg(String simg) {
        this.simg = simg;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "dianpu{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sdiandengji='" + sdiandengji + '\'' +
                ", saddress='" + saddress + '\'' +
                ", stel='" + stel + '\'' +
                ", kid='" + kid + '\'' +
                ", simg='" + simg + '\'' +
                ", status='" + status + '\'' +
                ", time='" + time + '\'' +
                '}';
    }

    /*以下是辅助字段,用于分页*/
    private Integer pageSize;
    private Integer startRow;
    private Integer pageNo;
    public Integer getPageSize() {
        return pageSize;
    }
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
    public Integer getStartRow() {
        return startRow;
    }
    public void setStartRow(Integer startRow) {
        this.startRow = startRow;
    }
    public Integer getPageNo() {
        return pageNo;
    }
    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    /*以下是辅助字段,用于批量*/
    private String ids;
    public String getIds() {
        return ids;
    }
    public void setIds(String ids) {
        this.ids = ids;
    }
}
