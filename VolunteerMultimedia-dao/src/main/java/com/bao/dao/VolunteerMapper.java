package com.bao.dao;

import com.bao.entity.SysUser;
import com.bao.entity.Volunteer;
import com.bao.vo.UserVo;
import com.bao.vo.VolunteerVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VolunteerMapper {

    /**
     * 查询用户列表
     * @param volunteerVo
     * @return
     */
    List<Volunteer> findVolunteerList(VolunteerVo volunteerVo);

    /**
     * 添加志愿者
     * @param volunteer
     * @return
     */
    int addVolunteer(Volunteer volunteer);

    /**
     * 根据用户名查询志愿者信息
     * @param loginName
     * @return
     */
    Volunteer findVolunteerByName(String loginName);

    /**
     * 根据用户名查询志愿者信息
     * @param loginName
     * @return
     */
    @Select("select * from volunteer where loginName = #{loginName}")
    Volunteer getVolunteerByName(String loginName);

    /**
     * 根据用户名-id查询志愿者信息
     * @param loginName
     * @return
     */
    @Select("select * from volunteer where loginName = #{loginName} and id != #{id}")
    Volunteer getVolunteerByNameId(@Param("loginName") String loginName,@Param("id")Long id);


    /**
     * 根据id志愿者信息
     * @param id
     * @return
     */
    @Select("select * from volunteer where id = #{id}")
    Volunteer queryVolunteerById(Long id);

    /**
     * 统计志愿者行数
     * @return
     */
    int getVolunteerCount(@Param("idCard") String idCard);

    /**
     * 修改志愿者
     * @param volunteer
     * @return
     */
    int updateVolunteer(Volunteer volunteer);

    /**
     * 删除志愿者
     * @param id
     * @return
     */
    @Delete("delete from volunteer where id = #{id}")
    int deleteById(Long id);
}
