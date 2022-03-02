package com.fuzaiyo.service.impl;

import com.fuzaiyo.dao.ClothesDao;
import com.fuzaiyo.domain.Clothes;
import com.fuzaiyo.service.ClothesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("clothesService")
public class ClothesServiceImpl implements ClothesService {
    @Autowired
    private ClothesDao clothesDao;

    //查所有衣服
    @Override
    public List<Clothes> findAll() {
        return clothesDao.findAll();
    }


    //搜索框模查询
    public List<Clothes> keywordsQuery(String keywords){
       return clothesDao.keywordsQuery(keywords);
    }

    //搜索标签是新品上市的
    @Override
    public List<Clothes> findNews() {
        return clothesDao.findNews();
    }

    @Override
    public Clothes findById(int id) {
        return clothesDao.findById(id);
    }


    @Override
    public List<Clothes> findLabel(String label) {
        return clothesDao.findLabel(label);
    }

}
