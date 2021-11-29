package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.LeiFengHotlineMapper;
import com.bao.entity.LeiFengHotline;
import com.bao.service.LeiFengHotlineService;
import com.bao.utils.JedisPoolUtils;
import com.bao.utils.RedisKey;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class LeiFengHotlineImpl implements LeiFengHotlineService {

    @Resource
    private LeiFengHotlineMapper leiFengHotlineMapper;

    @Override
    public List<LeiFengHotline> findLeiFengHotlineList() {
        return leiFengHotlineMapper.findLeiFengHotlineList();
    }

    @Override
    public String findLHotList() {
        //获取Jedis对象
        Jedis jedis = JedisPoolUtils.getJedis();
        //读取缓存中的数据
        String leiFengHotline_list = jedis.get(RedisKey.LEIFENGHOTLINE_LIST);
        //如果缓存中没有对应的数据：
        if(StringUtils.isEmpty(leiFengHotline_list)){
            //1.从数据库中查询数据
            List<LeiFengHotline> leiFengHotlineList = leiFengHotlineMapper.findLeiFengHotlineList();
            //2.将数据保存到缓存中
            leiFengHotline_list = jedis.set(RedisKey.LEIFENGHOTLINE_LIST, JSON.toJSONString(leiFengHotlineList));
        }
        //返回缓存数据
        return leiFengHotline_list;
    }

}
