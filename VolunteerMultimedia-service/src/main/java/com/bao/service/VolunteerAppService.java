package com.bao.service;

import com.bao.entity.VolunteerApp;

import java.util.List;

public interface VolunteerAppService {

    /**
     * 查询志愿者APP列表
     * @return
     */
    List<VolunteerApp> findVolunteerAppList();

    /**
     * 缓存查询
     * @return
     */
    String findVAppList();

}
