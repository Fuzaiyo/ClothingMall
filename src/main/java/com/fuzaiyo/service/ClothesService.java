package com.fuzaiyo.service;

import com.fuzaiyo.domain.Clothes;

import java.util.List;

public interface ClothesService {
    List<Clothes> findAll();

   List<Clothes> keywordsQuery(String keywords);

    List<Clothes> findNews();

    List<Clothes> findLabel(String label);

    Clothes findById(int id);

}
