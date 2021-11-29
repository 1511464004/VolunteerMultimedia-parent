package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.PublicServiceAdMapper;
import com.bao.entity.PublicServiceAd;
import com.bao.service.PublicServiceAdService;
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
public class PublicServiceAdImpl implements PublicServiceAdService {

    @Resource
    private PublicServiceAdMapper publicServiceAdMapper;

    @Override
    public List<PublicServiceAd> findPublicServiceAdList() {
        return publicServiceAdMapper.findPublicServiceAdList();
    }

    @Override
    public String findPadList() {
        //获取Jedis对象
        Jedis jedis = JedisPoolUtils.getJedis();
        //读取缓存中的数据
        String publicServiceAd_list = jedis.get(RedisKey.PUBLICSERVICEAD_LIST);
        //如果缓存中没有对应的数据：
        if(StringUtils.isEmpty(publicServiceAd_list)){
            //1.从数据库中查询数据
            List<PublicServiceAd> publicServiceAdList = publicServiceAdMapper.findPublicServiceAdList();
            //2.将数据保存到缓存中
            publicServiceAd_list = jedis.set(RedisKey.PUBLICSERVICEAD_LIST, JSON.toJSONString(publicServiceAdList));
        }
        //返回缓存数据
        return publicServiceAd_list;
    }


}
