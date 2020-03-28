package com.priproducts.controller;


import java.awt.image.BufferedImage;
import java.time.LocalDateTime;

public class ImageCode {
    private BufferedImage bufferedImage;

    private String code;

    private LocalDateTime expiredTime;

    public ImageCode(BufferedImage bufferedImage, String code, LocalDateTime expiredTime) {
        this.bufferedImage = bufferedImage;
        this.code = code;
        this.expiredTime = expiredTime;
    }

    public ImageCode(BufferedImage bufferedImage, String code, int expireIn) {
        this.bufferedImage = bufferedImage;
        this.code = code;
        this.expiredTime = LocalDateTime.now().plusSeconds(expireIn);
    }

    public boolean isExpired(){
        return LocalDateTime.now().isAfter(expiredTime);
    }

    public BufferedImage getBufferedImage() {
        return bufferedImage;
    }

    public void setBufferedImage(BufferedImage bufferedImage) {
        this.bufferedImage = bufferedImage;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public LocalDateTime getExpiredTime() {
        return expiredTime;
    }

    public void setExpiredTime(LocalDateTime expiredTime) {
        this.expiredTime = expiredTime;
    }
}
