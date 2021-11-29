package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.VolunteerAppMapper;
import com.bao.entity.VolunteerApp;
import com.bao.service.VolunteerAppService;
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
public class VolunteerAppImpl implements VolunteerAppService {

    @Resource
    private VolunteerAppMapper volunteerAppMapper;

    @Override
    public List<VolunteerApp> findVolunteerAppList() {
        return volunteerAppMapper.findVolunteerAppList();
    }

    @Override
    public String findVAppList() {
        //获取Jedis对象
        Jedis jedis = JedisPoolUtils.getJedis();
        //读取缓存中的数据
        String volunteerApp_list = jedis.get(RedisKey.VOLUNTEERAPP_LIST);
        //如果缓存中没有对应的数据：
        if(StringUtils.isEmpty(volunteerApp_list)){
            //1.从数据库中查询数据
            List<VolunteerApp> volunteerAppList = volunteerAppMapper.findVolunteerAppList();
            //2.将数据保存到缓存中
            volunteerApp_list = jedis.set(RedisKey.VOLUNTEERAPP_LIST, JSON.toJSONString(volunteerAppList));
        }
        //返回缓存数据
        return volunteerApp_list;
    }


}
