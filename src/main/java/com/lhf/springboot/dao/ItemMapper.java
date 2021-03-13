package com.lhf.springboot.dao;

import com.lhf.springboot.domain.Item;

public interface ItemMapper {
    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Item record);

    int updateByPrimaryKey(Item record);
}