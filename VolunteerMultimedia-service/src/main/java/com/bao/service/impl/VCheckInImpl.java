package com.bao.service.impl;

import com.bao.dao.VCheckInMapper;
import com.bao.entity.VCheckIn;
import com.bao.service.VCheckInService;
import com.bao.vo.VCheckInVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class VCheckInImpl implements VCheckInService {

    @Resource
    private VCheckInMapper vCheckInMapper;

    @Override
    public int addVCheckIn(VCheckIn vCheckIn) {
        return vCheckInMapper.addVCheckIn(vCheckIn);
    }

    @Override
    public List<VCheckIn> findVCheckInList(VCheckInVo vCheckInVo) {
        return vCheckInMapper.findVCheckInList(vCheckInVo);
    }

    @Override
    public int update(VCheckIn vCheckIn) {
        return vCheckInMapper.update(vCheckIn);
    }

    @Override
    public VCheckIn getVCheckInByNameId(String name, Integer v_id) {
        return vCheckInMapper.getVCheckInByNameId(name,v_id);
    }

    @Override
    public VCheckIn getVCheckInById(Integer id) {
        return vCheckInMapper.getVCheckInById(id);
    }

}
