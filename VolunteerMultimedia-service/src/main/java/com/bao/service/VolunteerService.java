package com.bao.service;

import com.bao.entity.Volunteer;
import com.bao.vo.VolunteerVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface VolunteerService extends UserDetailsService {

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
     * 根据用户名查询用户信息
     * @param loginName
     * @return
     */
    Volunteer getVolunteerByName(String loginName);

    /**
     * 根据用户名-id查询志愿者信息
     * @param loginName
     * @return
     */
    Volunteer getVolunteerByNameId(String loginName,Long id);

    /**
     * 根据id志愿者信息
     * @param id
     * @return
     */
    Volunteer queryVolunteerById(Long id);

    /**
     * 统计志愿者行数
     * @return
     */
    int getVolunteerCount(String idCard);

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
    int deleteById(Long id);

    /**
     * 修改志愿者密码
     * @param id
     * @return
     */
    int resetPwd(Long id);
}
