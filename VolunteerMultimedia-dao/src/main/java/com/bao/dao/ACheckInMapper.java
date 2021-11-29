package com.bao.dao;

import com.bao.entity.ACheckIn;
import com.bao.vo.ACheckInVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ACheckInMapper {

    /**
     * 添加活动申请表
     * @param aCheckIn
     * @return
     */
    int addACheckIn(ACheckIn aCheckIn);

    /**
     * 查询添加活动申请表
     * @param aCheckInVo
     * @return
     */
    List<ACheckIn> findACheckInList(ACheckInVo aCheckInVo);

    /**
     * 修改添加活动申请表
     * @param aCheckIn
     * @return
     */
    int update(ACheckIn aCheckIn);

    /**
     * 根据订单编号查询活动申请表
     * @return
     */
    @Select("select * from a_check_in where a_id = #{a_id} and v_id = #{v_id}")
    ACheckIn getACheckInById(@Param("a_id") Integer a_id,@Param("v_id") Integer v_id);

    /**
     * 根据编号查询活动申请表
     * @return
     */
    @Select("select * from a_check_in where id = #{id}")
    ACheckIn getAById(Integer id);


}
