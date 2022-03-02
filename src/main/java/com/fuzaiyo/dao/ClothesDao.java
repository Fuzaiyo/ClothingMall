package com.fuzaiyo.dao;

import com.fuzaiyo.domain.Clothes;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ClothesDao {

    //查询所有衣服
    @Select("select * from clothes")
    @Results({
            @Result(property = "id", column = "clothes_id")   //只有这一个实体字段名和数据库字段名不一样
    })
    public List<Clothes> findAll();


    //模糊查询
    @Select("select * from clothes where clothesname like '%${keywords}%'")
    @Results({
            @Result(property = "id", column = "clothes_id")
    })
    public List<Clothes> keywordsQuery(@Param("keywords") String keywords);


    //根据标签多表查询新品上市
    @Select("select * from clothes where clothes_id in(SELECT link.clo_id FROM label,link where labelname='新品上市' and label_id=lab_id)")
    @Results({
            @Result(property = "id", column = "clothes_id")
    })
    List<Clothes> findNews();


    //根据标签多表查询
    @Select("select * from clothes where clothes_id in(SELECT link.clo_id FROM label,link where labelname=#{label} and label_id=lab_id)")
    @Results({
            @Result(property = "id", column = "clothes_id")
    })
    List<Clothes> findLabel(@Param("label") String label);


    //根据id单品查询
    @Select("select * from clothes where clothes_id =#{id}")
    @Results({
            @Result(property = "id", column = "clothes_id")
    })
    Clothes findById(@Param("id") int id);


}
