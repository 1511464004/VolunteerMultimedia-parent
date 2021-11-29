package com.bao.service.impl;

import com.bao.dao.NetworkPIMapper;
import com.bao.entity.NetworkPI;
import com.bao.service.NetworkPIService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class NetworkPIImpl implements NetworkPIService {

    @Resource
    private NetworkPIMapper networkPIMapper;


    @Override
    public NetworkPI findNetworkPI() {
        return networkPIMapper.findNetworkPI();
    }
}
