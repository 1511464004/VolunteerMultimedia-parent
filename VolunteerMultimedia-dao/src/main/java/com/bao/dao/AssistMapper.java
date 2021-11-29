package com.bao.dao;

import com.bao.entity.Assist;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AssistMapper {

    /**
     * 查询雷锋热线-我要帮扶列表
     * @return
     */
    @Select("select * from assist")
    List<Assist> findAssistList();
}
