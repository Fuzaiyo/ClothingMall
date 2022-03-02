package com.fuzaiyo.domain;

import java.util.List;

//用户与购物车的对应类
public class Cart {
    private int id;
    private int uid;
    private int cloid;
    private int number;

    private List<Clothes> clothesList;

    public List<Clothes> getClothesList() {
        return clothesList;
    }

    public void setClothesList(List<Clothes> clothesList) {
        this.clothesList = clothesList;
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

    public int getCloid() {
        return cloid;
    }

    public void setCloid(int cloid) {
        this.cloid = cloid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

}
