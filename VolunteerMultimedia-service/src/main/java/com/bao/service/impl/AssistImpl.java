package com.bao.service.impl;

import com.bao.dao.AssistMapper;
import com.bao.entity.Assist;
import com.bao.service.AssistService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class AssistImpl implements AssistService {

    @Resource
    private AssistMapper assistMapper;

    @Override
    public List<Assist> findAssistList() {
        return assistMapper.findAssistList();
    }
}
