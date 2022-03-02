package com.fuzaiyo.dao;

import com.fuzaiyo.domain.Cart;
import com.fuzaiyo.domain.CartItems;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CartDao {

    //三表查询
    @Select("select cart_id,clothes_id,clothesname,price,number,img,detail\n" +
            "from `user` us\n" +
            "inner join cart ca on us.user_id=ca.uid\n" +
            "LEFT JOIN clothes clo\n" +
            "on ca.cloid=clo.clothes_id\n" +
            "where user_id=#{userid}")
    @Results({
            @Result(property = "cartid",column = "cart_id"),
            @Result(property = "cloid",column = "clothes_id")
    })
    List<CartItems> getCartListById(@Param("userid") int userid);

//    @Update("update cart set number=#{num} where cart_id=#{cartid}")
//    void updateNumByCloid(@Param("cartid") int cartid, @Param("num") int num);
//
//    @Delete("delete from cart where cart_id=#{cartid}")
//    void deleteByCloid(@Param("cartid") int cartid);


//    @Insert("INSERT INTO cart (uid,cloid,number) VALUES (#{uid},#{cloid},#{num})")
//    void addCartItem(@Param("uid") int uid,@Param("cloid") int cloid,@Param("num") int num);


    //满足条件则插入
    @Insert("insert into cart (uid,cloid,number) select #{uid},#{cloid},#{number} from dual where not exists (select * from cart where uid=#{uid} and cloid=#{cloid})")
    int saveByUidandCloid(@Param("uid") int uid, @Param("cloid") int cloid,@Param("number") int number);

    @Delete("delete from cart where cart_id=#{cartid}")
    void deleleById(@Param("cartid") int cartid);

    @Update("update cart set number=#{num} where cart_id=#{cartid}")
    void updateNumByCartid(@Param("cartid") int cartid, @Param("num") int num);
}
