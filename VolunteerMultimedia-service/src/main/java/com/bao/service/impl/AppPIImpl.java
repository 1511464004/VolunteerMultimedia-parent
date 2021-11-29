package com.bao.service.impl;

import com.bao.dao.AppPIMapper;
import com.bao.entity.AppPI;
import com.bao.service.AppPIService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
@Service
@Transactional
public class AppPIImpl implements AppPIService {

    @Resource
    private AppPIMapper appPIMapper;


    @Override
    public AppPI findAppPI() {
        return appPIMapper.findAppPI();
    }
}
