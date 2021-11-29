package com.bao.dao;

import com.bao.entity.BrandActivity;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface BrandActivityMapper {

    /**
     * 查询雷锋热线-品牌活动
     * @return
     */
    @Select("select * from brandActivity")
    List<BrandActivity> findBrandActivityList();
}
