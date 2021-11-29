package com.bao.dao;

import com.bao.entity.NetworkPI;
import org.apache.ibatis.annotations.Select;


public interface NetworkPIMapper {

    /**
     * 查询志愿者APP列表
     * @return
     */
    @Select("select * from networkPI limit 1")
    NetworkPI findNetworkPI();
}
