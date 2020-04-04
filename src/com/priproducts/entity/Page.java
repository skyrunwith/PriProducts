package com.priproducts.entity;

public class Page {

    /*用于分页*/
    private Long count;         //总记录数
    private Integer pageSize;   //每页大小
    private Integer pages;		//总页码数
    private Integer pageNo;		//当前页码数
    private Integer startRow;	//当前页开始行
    public Long getCount() {
        return count;
    }
    public void setCount(Long count) {
        this.count = count;
    }
    public Integer getPageSize() {
        return pageSize;
    }
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
    public Integer getPages() {
        return pages;
    }
    public void setPages(Long count1,Integer pageSize1) {
        int p=new Integer(count1+"")%pageSize1;
        if(p==0)this.pages = new Integer(count1+"")/pageSize1;
        else this.pages = new Integer(count1+"")/pageSize1+1;
    }
    public Integer getPageNo() {
        return pageNo;
    }
    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }
    public Integer getStartRow() {
        return startRow;
    }
    public void setStartRow(Integer pageNo,Integer pageSize) {
        this.startRow = (pageNo-1)*pageSize;
    }




}
