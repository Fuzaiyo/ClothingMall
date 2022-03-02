package com.fuzaiyo.service;

import com.fuzaiyo.domain.Cart;
import com.fuzaiyo.domain.CartItems;

import java.util.List;

public interface CartService {

    List<CartItems> getCartListById(int id);


    int saveByUidandCloid(int uid, int cloid, int number);

    void deleteById(int cartid);

    void updateNumByCartid(int cartid, int num);
}
