package com.bao.dao;

import com.bao.entity.NetworkPV;
import com.bao.entity.VCheckIn;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface NetworkPVMapper {

    /**
     * 查询志愿者网视频列表
     * @return
     */
    @Select("select * from networkPV")
    List<NetworkPV> findNetworkPV();

    /**
     * 删除志愿者网视频
     * @return
     */
    @Delete("delete from networkPV where id = #{id}")
    int deleteById(Integer id);


    /**
     * 添加视频
     * @return
     */
    int insertV(NetworkPV networkPV);

}
