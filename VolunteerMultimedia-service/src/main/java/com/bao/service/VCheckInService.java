package com.bao.service;

import com.bao.entity.VCheckIn;
import com.bao.vo.VCheckInVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VCheckInService {

    /**
     * 添加视频审核表
     * @param vCheckIn
     * @return
     */
    int addVCheckIn(VCheckIn vCheckIn);

    /**
     * 查询视频审核表
     * @param vCheckInVo
     * @return
     */
    List<VCheckIn> findVCheckInList(VCheckInVo vCheckInVo);

    /**
     * 修改视频审核表
     * @param vCheckIn
     * @return
     */
    int update(VCheckIn vCheckIn);

    /**
     * 查询一条-id-name
     */
    VCheckIn getVCheckInByNameId(String name,Integer v_id) ;

    /**
     * 查询一条-id
     */
    VCheckIn getVCheckInById(Integer id) ;
    
}
