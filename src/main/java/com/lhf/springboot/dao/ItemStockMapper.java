package com.lhf.springboot.dao;

import com.lhf.springboot.domain.ItemStock;

public interface ItemStockMapper {
    int insert(ItemStock record);

    int insertSelective(ItemStock record);

    ItemStock selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ItemStock record);

    int updateByPrimaryKey(ItemStock record);
}