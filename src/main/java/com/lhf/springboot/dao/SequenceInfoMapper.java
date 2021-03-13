package com.lhf.springboot.dao;

import com.lhf.springboot.domain.SequenceInfo;

public interface SequenceInfoMapper {
    int insert(SequenceInfo record);

    int insertSelective(SequenceInfo record);

    SequenceInfo selectByPrimaryKey(String name);

    int updateByPrimaryKeySelective(SequenceInfo record);

    int updateByPrimaryKey(SequenceInfo record);
}