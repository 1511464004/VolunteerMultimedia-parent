package com.bao.dao;

import com.bao.entity.VolunteerApp;


import java.util.List;

public interface VolunteerAppMapper {

    /**
     * 查询志愿者APP列表
     * @return
     */
    List<VolunteerApp> findVolunteerAppList();

}
