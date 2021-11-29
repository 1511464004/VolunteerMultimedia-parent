package com.bao.dao;

import com.bao.entity.HotNews;
import com.bao.entity.HotPhoto;
import com.bao.entity.NewsC;
import com.bao.entity.VolunteerNetwork;

import java.util.List;

public interface VolunteerNetworkMapper {

    /**
     * 查询志愿者网列表
     * @return
     */
    List<VolunteerNetwork> findVolunteerNetworkList();

    /**
     * 查询新闻
     */
    List<NewsC> findNewsCList();

    /**
     * 查询热点新闻
     */
    List<HotNews> findHotNewsList();

    /**
     * 查询热点图片
     */
    List<HotPhoto> findHotPhotoList();

}
