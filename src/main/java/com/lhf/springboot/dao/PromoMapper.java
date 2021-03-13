package com.lhf.springboot.dao;

import com.lhf.springboot.domain.Promo;

public interface PromoMapper {
    int insert(Promo record);

    int insertSelective(Promo record);

    Promo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Promo record);

    int updateByPrimaryKey(Promo record);
}