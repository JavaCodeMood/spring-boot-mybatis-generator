package com.lhf.springboot.dao;

import com.lhf.springboot.domain.OrderInfo;

public interface OrderInfoMapper {
    int insert(OrderInfo record);

    int insertSelective(OrderInfo record);

    OrderInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(OrderInfo record);

    int updateByPrimaryKey(OrderInfo record);
}