package com.bao.service.impl;

import com.bao.dao.BrandActivityMapper;
import com.bao.entity.BrandActivity;
import com.bao.service.BrandActivityService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class BrandActicityImpl implements BrandActivityService {

    @Resource
    private BrandActivityMapper brandActivityMapper;

    @Override
    public List<BrandActivity> findBrandActivityList() {
        return brandActivityMapper.findBrandActivityList();
    }
}
