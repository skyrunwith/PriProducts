package com.priproducts.entity;

public class Order {
    private int oid;
    private String ordernumber; //订单编号
    private String paynumber; //支付金额
    private int state; //状态
    private String createtime; //创建时间
    private String updatetime; //下单时间
    private int uid; //用户
    private String address; //地址
    private int flag;
    private String beizhu; //备注
    private String number; //数量
    private String kname; //商品类型
    private String x_name; //商品名称

    public Order() {
    }

    public Order(int oid, String ordernumber, String paynumber, int state, String createtime, String updatetime, int uid, String address, int flag, String beizhu, String number, String kname, String x_name) {
        this.oid = oid;
        this.ordernumber = ordernumber;
        this.paynumber = paynumber;
        this.state = state;
        this.createtime = createtime;
        this.updatetime = updatetime;
        this.uid = uid;
        this.address = address;
        this.flag = flag;
        this.beizhu = beizhu;
        this.number = number;
        this.kname = kname;
        this.x_name = x_name;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber;
    }

    public String getPaynumber() {
        return paynumber;
    }

    public void setPaynumber(String paynumber) {
        this.paynumber = paynumber;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getKname() {
        return kname;
    }

    public void setKname(String kname) {
        this.kname = kname;
    }

    public String getX_name() {
        return x_name;
    }

    public void setX_name(String x_name) {
        this.x_name = x_name;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", ordernumber='" + ordernumber + '\'' +
                ", paynumber='" + paynumber + '\'' +
                ", state=" + state +
                ", createtime='" + createtime + '\'' +
                ", updatetime='" + updatetime + '\'' +
                ", uid=" + uid +
                ", address='" + address + '\'' +
                ", flag=" + flag +
                ", beizhu='" + beizhu + '\'' +
                ", number='" + number + '\'' +
                ", kname='" + kname + '\'' +
                ", x_name='" + x_name + '\'' +
                '}';
    }
}
