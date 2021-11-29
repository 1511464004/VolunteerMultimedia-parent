package com.bao.service.impl;

import com.bao.dao.NetworkPVMapper;
import com.bao.entity.NetworkPV;
import com.bao.service.NetworkPVService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class NetworkPVServiceImpl implements NetworkPVService {

    @Resource
    private NetworkPVMapper networkPVMapper;

    @Override
    public List<NetworkPV> findNetworkPV() {
        return networkPVMapper.findNetworkPV();
    }

    @Override
    public int deleteById(Integer id) {
        return networkPVMapper.deleteById(id);
    }

    @Override
    public int insertV(NetworkPV networkPV) {
        return networkPVMapper.insertV(networkPV);
    }
}
