package com.bao.service;

import com.bao.entity.NetworkPV;

import java.util.List;


public interface NetworkPVService {

    /**
     * 查询志愿者网视频列表
     * @return
     */
    List<NetworkPV> findNetworkPV();

    /**
     * 删除志愿者网视频
     * @return
     */
    int deleteById(Integer id);

    /**
     * 添加视频
     * @return
     */
    int insertV(NetworkPV networkPV);
}
