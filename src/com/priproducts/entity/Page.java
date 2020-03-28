package com.priproducts.entity;

public class Page {
    //分页
    private int count; //总记录数
    private int pageSize; //每页大小
    private int pages; //总页码数
    private int PageNo; //当前页码数
    private int startRow; //当前也开始行

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int countt,int pageSizet) {
        int pg=new Integer(countt+"")%pageSizet;
        if(pg==0){
            this.pages=new Integer(countt+"")/pageSizet;
        }
        else this.pages = new Integer(countt+"")/pageSizet+1;
    }

    public int getPageNo() {
        return PageNo;
    }

    public void setPageNo(int pageNo) {
        PageNo = pageNo;
    }

    public int getStartRow() {
        return startRow;
    }

    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }
}
