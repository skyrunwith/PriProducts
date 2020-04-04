package com.priproducts.entity;

public class Xiangqing {
    private int xid;
    private String x_name; //名称
    private String kname; //种类
    private String x_img; //图片
    private String x_img_small1;
    private String x_img_small2;

    private String x_leixing; //类型
    private String x_qishou; //起售
    private String x_huanjing; //环境
    private String x_price; //单价
    private Integer x_number; //库存
    private Integer status; //状态
    private String x_time; //创建时间
    private String x_creattime; //上架时间

    private int kid;

    private String title1;
    private String title2;
    private String title3;
    private String title4;

    public Xiangqing() {
    }

    public Xiangqing(int xid, String x_name, String kname, String x_img, String x_img_small1, String x_img_small2, String x_leixing, String x_qishou, String x_huanjing, String x_price, Integer x_number, int status, String x_time, String x_creattime) {
        this.xid = xid;
        this.x_name = x_name;
        this.kname = kname;
        this.x_img = x_img;
        this.x_img_small1 = x_img_small1;
        this.x_img_small2 = x_img_small2;
        this.x_leixing = x_leixing;
        this.x_qishou = x_qishou;
        this.x_huanjing = x_huanjing;
        this.x_price = x_price;
        this.x_number = x_number;
        this.status = status;
        this.x_time = x_time;
        this.x_creattime = x_creattime;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public String getX_img_small2() {
        return x_img_small2;
    }

    public void setX_img_small2(String x_img_small2) {
        this.x_img_small2 = x_img_small2;
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1;
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2;
    }

    public String getTitle3() {
        return title3;
    }

    public void setTitle3(String title3) {
        this.title3 = title3;
    }

    public String getTitle4() {
        return title4;
    }

    public void setTitle4(String title4) {
        this.title4 = title4;
    }

    public String getX_img_small1() {
        return x_img_small1;
    }

    public void setX_img_small1(String x_img_small1) {
        this.x_img_small1 = x_img_small1;
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

    public Integer getX_number() {
        return x_number;
    }

    public void setX_number(Integer x_number) {
        this.x_number = x_number;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
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
