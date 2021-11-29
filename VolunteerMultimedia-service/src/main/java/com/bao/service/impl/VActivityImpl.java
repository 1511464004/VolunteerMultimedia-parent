package com.bao.service.impl;

import com.bao.dao.VActivityMapper;
import com.bao.entity.VActivity;
import com.bao.service.VActivityService;
import com.bao.vo.VActivityVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class VActivityImpl implements VActivityService {

    @Resource
    private VActivityMapper vActivityMapper;

    @Override
    public List<VActivity> findVActivityList(VActivityVo vActivityVo) {
        return vActivityMapper.findVActivityList(vActivityVo);
    }

    @Override
    public int addVA(VActivity vActivity) {
        return vActivityMapper.insert(vActivity);
    }

    @Override
    public int updateVActivity(VActivity vActivity) {
        return vActivityMapper.updateVActivity(vActivity);
    }

    @Override
    public int deleteById(Integer id) {
        return vActivityMapper.deleteById(id);
    }

    @Override
    public VActivity getVAName(String name) {
        return vActivityMapper.getVAName(name);
    }

    @Override
    public VActivity getVANameID(String name, Integer id) {
        return vActivityMapper.getVANameID(name,id);
    }

    @Override
    public VActivity getVAID(Integer id) {
        return vActivityMapper.getVAID(id);
    }
}
