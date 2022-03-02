package com.fuzaiyo.domain;

public class Clothes {

    private int id;
    private int price;
    private String clothesname;
    private  String img;
    private String detail;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getClothesname() {
        return clothesname;
    }

    public void setClothesname(String clothesname) {
        this.clothesname = clothesname;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Clothes{" +
                "id=" + id +
                ", price=" + price +
                ", clothesname='" + clothesname + '\'' +
                ", img='" + img + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }
}
