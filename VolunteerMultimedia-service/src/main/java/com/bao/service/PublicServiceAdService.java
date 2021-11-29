package com.bao.service;

import com.bao.entity.PublicServiceAd;

import java.util.List;

public interface PublicServiceAdService {

    /**
     * 查询公益广告列表
     * @return
     */
    List<PublicServiceAd> findPublicServiceAdList();

    /**
     * 缓存查询
     * @return
     */
    String findPadList();

}
