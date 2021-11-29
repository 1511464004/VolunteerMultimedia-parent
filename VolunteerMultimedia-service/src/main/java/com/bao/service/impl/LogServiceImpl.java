package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.DeptMapper;
import com.bao.dao.LogMapper;
import com.bao.entity.Dept;
import com.bao.entity.Log;
import com.bao.service.DeptService;
import com.bao.service.LogService;
import com.bao.utils.JedisPoolUtils;
import com.bao.utils.RedisKey;
import com.bao.vo.DeptVo;
import com.bao.vo.LogVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


@Service
@Transactional
public class LogServiceImpl implements LogService {

    @Resource
    private LogMapper logMapper;

    /**
     * 查询日志列表
     * @param logVo
     * @return
     */
    @Override
    public List<Log> findLogList(LogVo logVo) {
        return logMapper.findLogList(logVo);
    }


    /**
     * 添加日志
     * @param log
     * @return
     */
    @Override
    public void insert(Log log) {
        //调用添加方法
        logMapper.insert(log);
    }

    @Override
    /**
     * 删除日志
     * @return
     */
    public int delete() {
        //调用删除方法
        int i = logMapper.delete();
        return i;
    }

}
