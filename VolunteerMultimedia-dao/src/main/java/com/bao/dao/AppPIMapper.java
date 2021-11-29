package com.bao.dao;

import com.bao.entity.AppPI;
import org.apache.ibatis.annotations.Select;


public interface AppPIMapper {

    /**
     * 查询志愿者APP列表
     * @return
     */
    @Select("select * from appPI limit 1")
    AppPI findAppPI();
}
