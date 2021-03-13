package com.lhf.springboot.dao;

import com.lhf.springboot.domain.UserPassword;

public interface UserPasswordMapper {
    int insert(UserPassword record);

    int insertSelective(UserPassword record);

    UserPassword selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserPassword record);

    int updateByPrimaryKey(UserPassword record);
}