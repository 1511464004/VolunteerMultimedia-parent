package com.bao.dao;

import com.bao.entity.LeiFengHotline;

import java.util.List;

public interface LeiFengHotlineMapper {

    /**
     * 查询雷锋热线列表
     * @return
     */
    List<LeiFengHotline> findLeiFengHotlineList();

}
