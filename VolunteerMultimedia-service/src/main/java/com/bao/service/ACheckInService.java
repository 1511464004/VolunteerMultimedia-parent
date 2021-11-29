package com.bao.service;

import com.bao.entity.ACheckIn;
import com.bao.vo.ACheckInVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ACheckInService {

    /**
     * 添加活动申请表
     * @param aCheckIn
     * @return
     */
    int addACheckIn(ACheckIn aCheckIn);

    /**
     * 查询活动申请表
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
    ACheckIn getACheckInById(Integer a_id,Integer v_id);

    /**
     * 根据编号查询活动申请表
     * @return
     */
    ACheckIn getAById(Integer id);
}
