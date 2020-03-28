package com.priproducts.entity;

public class Admin {
    private int aid;
    private String adminname; //管理员名
    private String adminpwd; //管理员密码

    public Admin() {
    }

    public Admin(int aid, String adminname, String adminpwd) {
        this.aid = aid;
        this.adminname = adminname;
        this.adminpwd = adminpwd;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminpwd() {
        return adminpwd;
    }

    public void setAdminpwd(String adminpwd) {
        this.adminpwd = adminpwd;
    }

    @Override
    public String toString() {
        return "admin{" +
                "aid=" + aid +
                ", adminname='" + adminname + '\'' +
                ", adminpwd='" + adminpwd + '\'' +
                '}';
    }
}
