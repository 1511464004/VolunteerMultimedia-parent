package com.bao.service;

import com.bao.entity.PublicBenefitActivities;

import java.util.List;

public interface PublicBenefitActivitiesService {

    /**
     * 查询公益活动列表
     * @return
     */
    List<PublicBenefitActivities> findPublicBenefitActivitiesList();

    /**
     * 缓存查询
     * @return
     */
    String findPbaList();

}
