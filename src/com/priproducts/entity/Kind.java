package com.priproducts.entity;

public class Kind {
    private int kid;
    private String kname; //种类名
    private int status; //状态
    private String createtime; //创建时间

    public Kind() {
    }

    public Kind(int kid, String kname, int status, String createtime) {
        this.kid = kid;
        this.kname = kname;
        this.status = status;
        this.createtime = createtime;
    }

    public int getKid() {
        return kid;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    @Override
    public String toString() {
        return "kind{" +
                "kid=" + kid +
                ", kname='" + kname + '\'' +
                ", status=" + status +
                ", createtime='" + createtime + '\'' +
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
