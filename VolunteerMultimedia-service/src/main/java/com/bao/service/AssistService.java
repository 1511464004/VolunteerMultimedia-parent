package com.bao.service;

import com.bao.entity.Assist;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AssistService {

    /**
     * 查询雷锋热线-我要帮扶列表
     * @return
     */
    List<Assist> findAssistList();
}
