package com.bao.dao;

import com.bao.entity.PublicServiceAd;

import java.util.List;

public interface PublicServiceAdMapper {

    /**
     * 查询志愿者APP列表
     * @return
     */
    List<PublicServiceAd> findPublicServiceAdList();

}
