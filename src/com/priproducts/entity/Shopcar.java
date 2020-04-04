package com.priproducts.entity;

import java.util.Date;

public class Shopcar {
    private Integer xid;
    private Integer uid;
    private Integer kid;
    private Integer sid;
    private Integer number; //数量
    private String kname; //名称
    private String xname;
    private Double cprice; //价格
    private String cimg; //图片
    private Date cts;
    private String oid;
    private Integer stock;

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getXname() {
        return xname;
    }

    public void setXname(String xname) {
        this.xname = xname;
    }

    public Shopcar() {
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public Shopcar(int xid, int uid, int kid, int sid, int number, String kname, Double cprice, String cimg, Date cts, Integer pageSize, Integer startRow, Integer pageNo, String ids) {
        this.xid = xid;
        this.uid = uid;
        this.kid = kid;
        this.sid = sid;
        this.number = number;
        this.kname = kname;
        this.cprice = cprice;
        this.cimg = cimg;
        this.cts = cts;
        this.pageSize = pageSize;
        this.startRow = startRow;
        this.pageNo = pageNo;
        this.ids = ids;
    }

    public Integer getXid() {
        return xid;
    }

    public void setXid(Integer xid) {
        this.xid = xid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getKid() {
        return kid;
    }

    public void setKid(Integer kid) {
        this.kid = kid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

    public Double getCprice() {
        return cprice;
    }

    public void setCprice(Double cprice) {
        this.cprice = cprice;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }

    public Date getCts() {
        return cts;
    }

    public void setCts(Date cts) {
        this.cts = cts;
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
