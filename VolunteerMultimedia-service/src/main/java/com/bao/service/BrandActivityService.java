package com.bao.service;

import com.bao.entity.BrandActivity;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BrandActivityService {

    /**
     * 查询雷锋热线-品牌活动
     * @return
     */
    List<BrandActivity> findBrandActivityList();
}
