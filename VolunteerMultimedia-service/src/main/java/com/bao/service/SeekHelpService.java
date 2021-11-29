package com.bao.service;

import com.bao.entity.SeekHelp;

import java.util.List;

public interface SeekHelpService {

    /**
     * 查询雷锋热线-我要帮扶列表
     * @return
     */
    List<SeekHelp> findSeekHelpList();
}
