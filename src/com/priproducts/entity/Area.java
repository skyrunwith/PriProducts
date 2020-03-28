package com.priproducts.entity;

public class Area {
    private int areaId;
    private String areaCode;
    private String areaName;
    private String level;
    private String cityCode;
    private String center;
    private String parentId;

    public Area() {
    }

    public Area(int areaId, String areaCode, String areaName, String level, String cityCode, String center, String parentId) {
        this.areaId = areaId;
        this.areaCode = areaCode;
        this.areaName = areaName;
        this.level = level;
        this.cityCode = cityCode;
        this.center = center;
        this.parentId = parentId;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public String getCenter() {
        return center;
    }

    public void setCenter(String center) {
        this.center = center;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "area{" +
                "areaId=" + areaId +
                ", areaCode='" + areaCode + '\'' +
                ", areaName='" + areaName + '\'' +
                ", level='" + level + '\'' +
                ", cityCode='" + cityCode + '\'' +
                ", center='" + center + '\'' +
                ", parentId='" + parentId + '\'' +
                '}';
    }
}
