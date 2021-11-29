package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.PublicBenefitActivitiesMapper;
import com.bao.entity.PublicBenefitActivities;
import com.bao.service.PublicBenefitActivitiesService;
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
public class PublicBenefitActivitiesImpl implements PublicBenefitActivitiesService {

    @Resource
    private PublicBenefitActivitiesMapper publicBenefitActivitiesMapper;

    @Override
    public List<PublicBenefitActivities> findPublicBenefitActivitiesList() {
        return publicBenefitActivitiesMapper.findPublicBenefitActivitiesList();
    }

    @Override
    public String findPbaList() {
        //获取Jedis对象
        Jedis jedis = JedisPoolUtils.getJedis();
        //读取缓存中的数据
        String publicBenefitActivities_list = jedis.get(RedisKey.PUBLICBENEFITACTIVITIES_LIST);
        //如果缓存中没有对应的数据：
        if(StringUtils.isEmpty(publicBenefitActivities_list)){
            //1.从数据库中查询数据
            List<PublicBenefitActivities> publicBenefitActivitiesList = publicBenefitActivitiesMapper.findPublicBenefitActivitiesList();
            //2.将数据保存到缓存中
            publicBenefitActivities_list = jedis.set(RedisKey.PUBLICBENEFITACTIVITIES_LIST, JSON.toJSONString(publicBenefitActivitiesList));
        }
        //返回缓存数据
        return publicBenefitActivities_list;
    }

}
