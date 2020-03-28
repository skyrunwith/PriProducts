package com.priproducts.entity;

public class Address {
    private int id;
    private int uid;
    private String name; //用户名
    private String phone; //电话
    private String province; //省
    private String city; //城市
    private String county; //街道
    private String street; //巷
    private String addr; //具体地址
    private String isdelete;

    public Address() {
    }

    public Address(int id, int uid, String name, String phone, String province, String city, String county, String street, String addr, String isdelete) {
        this.id = id;
        this.uid = uid;
        this.name = name;
        this.phone = phone;
        this.province = province;
        this.city = city;
        this.county = county;
        this.street = street;
        this.addr = addr;
        this.isdelete = isdelete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(String isdelete) {
        this.isdelete = isdelete;
    }

    @Override
    public String toString() {
        return "address{" +
                "id=" + id +
                ", uid=" + uid +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", county='" + county + '\'' +
                ", street='" + street + '\'' +
                ", addr='" + addr + '\'' +
                ", isdelete='" + isdelete + '\'' +
                '}';
    }
}
