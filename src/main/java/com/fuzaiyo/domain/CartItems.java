package com.fuzaiyo.domain;


//购物车条项展示类
public class CartItems {
    private int cloid;
    private int cartid;
    private int number;
    private int price;
    private String clothesname;
    private  String img;
    private String detail;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
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

    public int getCloid() {
        return cloid;
    }

    public void setCloid(int cloid) {
        this.cloid = cloid;
    }

    public int getCartid() {
        return cartid;
    }

    public void setCartid(int cartid) {
        this.cartid = cartid;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "CartItems{" +
                "number=" + number +
                ", price=" + price +
                ", clothesname='" + clothesname + '\'' +
                ", img='" + img + '\'' +
                ", cloid=" + cloid +
                ", cartid=" + cartid +
                ", detail='" + detail + '\'' +
                '}';
    }
}
