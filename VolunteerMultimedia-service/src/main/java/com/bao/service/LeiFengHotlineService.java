package com.bao.service;

import com.bao.entity.LeiFengHotline;

import java.util.List;

public interface LeiFengHotlineService {

    /**
     * 查询雷锋热线列表
     * @return
     */
    List<LeiFengHotline> findLeiFengHotlineList();

    /**
     * 缓存查询
     * @return
     */
    String findLHotList();

}
