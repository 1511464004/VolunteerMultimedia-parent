package com.bao.dao;

import com.bao.entity.VCheckIn;
import com.bao.vo.VCheckInVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VCheckInMapper {

    /**
     * 添加视频上传表
     * @param vCheckIn
     * @return
     */
    int addVCheckIn(VCheckIn vCheckIn);

    /**
     * 查询添加视频上传表
     * @param vCheckInVo
     * @return
     */
    List<VCheckIn> findVCheckInList(VCheckInVo vCheckInVo);

    /**
     * 修改添加视频上传表
     * @param vCheckIn
     * @return
     */
    int update(VCheckIn vCheckIn);

    /**
     * 查询一条-id-name
     */
    @Select("select * from ve_check where name = #{name} and v_id = #{v_id}")
    VCheckIn getVCheckInByNameId(@Param("name")String name,@Param("v_id")Integer v_id) ;

    /**
     * 查询一条-id
     */
    @Select("select * from ve_check where id = #{id}")
    VCheckIn getVCheckInById(Integer id) ;
}
