package com.bao.dao;

import com.bao.entity.VActivity;
import com.bao.vo.VActivityVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VActivityMapper {
    /**
     * 查询志愿活动列表
     * @return
     */
    List<VActivity> findVActivityList(VActivityVo vActivityVo);

    /**
     * 添加用户
     * @param vActivity
     * @return
     */
    int insert(VActivity vActivity);

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
    @Select("select * from v_activity where name = #{name}")
    VActivity getVAName(String name);

    /**
     * 根据活动名称查询活动信息-id
     * @param name
     * @return
     */
    @Select("select * from v_activity where name = #{name} and id != #{id}")
    VActivity getVANameID(@Param("name")String name, @Param("id")Integer id);

    /**
     * 根据活动查询活动信息-id
     * @param id
     * @return
     */
    @Select("select * from v_activity where id = #{id}")
    VActivity getVAID(Integer id);

}
