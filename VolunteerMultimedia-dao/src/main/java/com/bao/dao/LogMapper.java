package com.bao.dao;

import com.bao.entity.Dept;
import com.bao.entity.Log;
import com.bao.vo.LogVo;
import org.apache.ibatis.annotations.Delete;


import java.util.List;

public interface LogMapper {

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
    int insert(Log log);

    /**
     * 删除日志
     * @return
     */
    @Delete("delete from sys_log")
    int delete();
}
