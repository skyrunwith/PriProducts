package com.priproducts.entity;

public class Admin {
    private Integer uid;
    private String username;
    private String userpwd;
    private String usetel;
    private String useremail;
    private String useraddre;
    private String address;
    private String email;
    private String reason;
    private Integer status;

    public String getUseraddre() {
        return useraddre;
    }

    public void setUseraddre(String useraddre) {
        this.useraddre = useraddre;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getUsetel() {
        return usetel;
    }

    public void setUsetel(String usetel) {
        this.usetel = usetel;
    }

    public String getReason() {
        return reason;
    }
    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public Integer getUid() {
        return uid;
    }
    public void setUid(Integer uid) {
        this.uid = uid;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getStatus() {
        return status;
    }
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    /*		以下是辅助字段，用于分页		*/
    private Integer pageSize;	//每页大小
    private Integer startRow;	//当前页的开始行
    private Integer pageNo;		//当前页数

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

    /*		以下是辅助字段，用于批量操作		*/
    private String ids;

    public String getIds() {
        return ids;
    }
    public void setIds(String ids) {
        this.ids = ids;
    }
}
