package com.priproducts.entity;

public class Order {
    private Integer oid;
    private Integer aid;
    private Integer xid;
    private String ordernumber; //订单编号
    private double paynumber; //支付金额
    private Integer state; //状态
    private String createtime; //创建时间
    private String updatetime; //下单时间
    private Integer uid; //用户
    private String address; //地址
    private int flag;
    private String beizhu; //备注
    private int number; //数量
    private String kname; //商品类型
    private String x_name; //商品名称
    private String username;
    private String img;
    private String telephone;
    private double price;
    private String tts;
    private String zts;
    private String fts;
    private String cjts;
    private double tprice;

    public double getTprice() {
        return tprice;
    }

    public void setTprice(double tprice) {
        this.tprice = tprice;
    }

    public Integer getXid() {
        return xid;
    }

    public void setXid(Integer xid) {
        this.xid = xid;
    }

    public String getTts() {
        return tts;
    }

    public void setTts(String tts) {
        this.tts = tts;
    }

    public String getZts() {
        return zts;
    }

    public void setZts(String zts) {
        this.zts = zts;
    }

    public String getFts() {
        return fts;
    }

    public void setFts(String fts) {
        this.fts = fts;
    }

    public String getCjts() {
        return cjts;
    }

    public void setCjts(String cjts) {
        this.cjts = cjts;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Order() {
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Order(int oid, String ordernumber, double paynumber, int state, String createtime, String updatetime, int uid, String address, int flag, String beizhu, int number, String kname, String x_name) {
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber;
    }

    public double getPaynumber() {
        return paynumber;
    }

    public void setPaynumber(double paynumber) {
        this.paynumber = paynumber;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
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

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
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

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
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
