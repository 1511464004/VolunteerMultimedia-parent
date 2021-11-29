package com.bao.service.impl;

import com.bao.dao.SeekHelpMapper;
import com.bao.entity.SeekHelp;
import com.bao.service.SeekHelpService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class SeekHelpImpl implements SeekHelpService {

    @Resource
    private SeekHelpMapper seekHelpMapper;

    @Override
    public List<SeekHelp> findSeekHelpList() {
        return seekHelpMapper.findSeekHelpList();
    }
}
