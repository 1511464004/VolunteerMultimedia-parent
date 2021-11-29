package com.bao.service;

import com.bao.entity.Log;
import com.bao.vo.LogVo;
import org.apache.ibatis.annotations.Delete;

import java.util.List;

public interface LogService {

    /**
     * 查询日志列表
     * @param logVo
     * @return
     */
    List<Log> findLogList(LogVo logVo);

    /**
     * 添加日志
     * @param log
     * @return
     */
    void insert(Log log);

    /**
     * 删除日志
     * @return
     */
    int delete();

}
