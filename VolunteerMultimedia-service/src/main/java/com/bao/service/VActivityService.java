package com.bao.service;

import com.bao.entity.VActivity;
import com.bao.vo.VActivityVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VActivityService {

    /**
     * 查询志愿活动列表
     * @return
     */
    List<VActivity> findVActivityList(VActivityVo vActivityVo);

    /**
     * 添加志愿活动列表
     * @param vActivity
     * @return
     */
    int addVA(VActivity vActivity);

    /**
     * 修改活动
     * @param vActivity
     * @return
     */
    int updateVActivity(VActivity vActivity);

    /**
     * 删除活动
     * @param id
     * @return
     */
    int deleteById(Integer id);

    /**
     * 根据活动名称查询活动信息
     * @param name
     * @return
     */
    VActivity getVAName(String name);

    /**
     * 根据活动名称查询活动信息-id
     * @param name
     * @return
     */
    VActivity getVANameID(String name, Integer id);

    /**
     * 根据活动查询活动信息-id
     * @param id
     * @return
     */
    VActivity getVAID(Integer id);

}
