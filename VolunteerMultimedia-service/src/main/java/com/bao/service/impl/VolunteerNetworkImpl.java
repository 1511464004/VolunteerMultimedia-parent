package com.bao.service.impl;

import com.alibaba.fastjson.JSON;
import com.bao.dao.VolunteerNetworkMapper;
import com.bao.entity.HotNews;
import com.bao.entity.HotPhoto;
import com.bao.entity.NewsC;
import com.bao.entity.VolunteerNetwork;
import com.bao.service.VolunteerNetworkService;
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
public class VolunteerNetworkImpl implements VolunteerNetworkService {

    @Resource
    private VolunteerNetworkMapper volunteerNetworkMapper;

    @Override
    public List<VolunteerNetwork> findVolunteerNetworkList() {
        return volunteerNetworkMapper.findVolunteerNetworkList();
    }

    @Override
    public String findVNetworkList() {
        //获取Jedis对象
        Jedis jedis = JedisPoolUtils.getJedis();
        //读取缓存中的数据
        String volunteerNetwork_list = jedis.get(RedisKey.VOLUNTEERNETWORK_LIST);
        //如果缓存中没有对应的数据：
        if(StringUtils.isEmpty(volunteerNetwork_list)){
            //1.从数据库中查询数据
            List<VolunteerNetwork> volunteerNetworkList = volunteerNetworkMapper.findVolunteerNetworkList();
            //2.将数据保存到缓存中
            volunteerNetwork_list = jedis.set(RedisKey.VOLUNTEERNETWORK_LIST, JSON.toJSONString(volunteerNetworkList));
        }
        //返回缓存数据
        return volunteerNetwork_list;
    }

    @Override
    public List<NewsC> findNewsCList() {
        return volunteerNetworkMapper.findNewsCList();
    }

    @Override
    public List<HotNews> findHotNewsList() {
        return volunteerNetworkMapper.findHotNewsList();
    }

    @Override
    public List<HotPhoto> findHotPhotoList() {
        return volunteerNetworkMapper.findHotPhotoList();
    }


}
