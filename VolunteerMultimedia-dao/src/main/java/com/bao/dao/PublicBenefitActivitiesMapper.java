package com.bao.dao;

import com.bao.entity.PublicBenefitActivities;

import java.util.List;

public interface PublicBenefitActivitiesMapper {

    /**
     * 查询公益活动列表
     * @return
     */
    List<PublicBenefitActivities> findPublicBenefitActivitiesList();

}
