package com.bao.dao;

import com.bao.entity.SeekHelp;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SeekHelpMapper {

    /**
     * 查询雷锋热线-我要帮扶列表
     * @return
     */
    @Select("select * from seekHelp")
    List<SeekHelp> findSeekHelpList();
}
