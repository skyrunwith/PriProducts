package com.priproducts.entity;

public class User {
    private int uid;
    private String username; //用户名
    private String userpwd; //密码
    private String usetel; //电话
    private String useremail; //电子邮箱
    private String useraddre; //地址
    private int status; //状态
    private String head_img;
    private Integer aid;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getHead_img() {
        return head_img;
    }

    public void setHead_img(String head_img) {
        this.head_img = head_img;
    }

    private String reason;

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public User() {
    }

    public User(int uid, String username, String userpwd, String usetel, String useremail, String useraddre, int status) {
        this.uid = uid;
        this.username = username;
        this.userpwd = userpwd;
        this.usetel = usetel;
        this.useremail = useremail;
        this.useraddre = useraddre;
        this.status = status;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String getUsetel() {
        return usetel;
    }

    public void setUsetel(String usetel) {
        this.usetel = usetel;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getUseraddre() {
        return useraddre;
    }

    public void setUseraddre(String useraddre) {
        this.useraddre = useraddre;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "user{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", userpwa='" + userpwd + '\'' +
                ", usetel='" + usetel + '\'' +
                ", useremail='" + useremail + '\'' +
                ", useraddre='" + useraddre + '\'' +
                ", status=" + status +
                '}';
    }


}
