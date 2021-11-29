package com.bao.service.impl;

import com.bao.dao.ACheckInMapper;
import com.bao.entity.ACheckIn;
import com.bao.service.ACheckInService;
import com.bao.vo.ACheckInVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ACheckInImpl implements ACheckInService {

    @Resource
    private ACheckInMapper aCheckInMapper;

    @Override
    public int addACheckIn(ACheckIn aCheckIn) {
        return aCheckInMapper.addACheckIn(aCheckIn);
    }

    @Override
    public List<ACheckIn> findACheckInList(ACheckInVo aCheckInVo) {
        return aCheckInMapper.findACheckInList(aCheckInVo);
    }

    @Override
    public int update(ACheckIn aCheckIn) {
        return aCheckInMapper.update(aCheckIn);
    }

    @Override
    public ACheckIn getACheckInById(Integer a_id,Integer v_id) {
        return aCheckInMapper.getACheckInById(a_id,v_id);
    }

    @Override
    public ACheckIn getAById(Integer id) {
        return aCheckInMapper.getAById(id);
    }
}
