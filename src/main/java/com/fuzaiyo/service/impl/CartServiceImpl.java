package com.fuzaiyo.service.impl;

import com.fuzaiyo.dao.CartDao;
import com.fuzaiyo.dao.ClothesDao;
import com.fuzaiyo.domain.Cart;
import com.fuzaiyo.domain.CartItems;
import com.fuzaiyo.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("cartService")
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    //添加购物车记录
    @Override
    public int saveByUidandCloid(int uid, int cloid, int number) {
        return cartDao.saveByUidandCloid(uid,cloid,number);
    }

    @Override
    public void deleteById(int cartid) {
        cartDao.deleleById(cartid);
    }

    //根据cartid修改购物车商品数量
    @Override
    public void updateNumByCartid(int cartid, int num) {
        cartDao.updateNumByCartid(cartid,num);
    }

    //根据登录的用户id查出他自己的购物车清单
    @Override
    public List<CartItems> getCartListById(int id) {
        List<CartItems> cartItemsList=cartDao.getCartListById(id);
        return cartItemsList;
    }
}
