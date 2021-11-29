package com.bao.service.impl;

import com.bao.dao.VolunteerMapper;
import com.bao.entity.SysUser;
import com.bao.entity.Volunteer;
import com.bao.service.VolunteerService;
import com.bao.utils.PasswordUtil;
import com.bao.utils.SystemConstants;
import com.bao.vo.VolunteerVo;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class VolunteerServiceImpl implements VolunteerService {

    @Resource
    private VolunteerMapper volunteerMapper;


    /**
     * 查询用户列表
     * @param volunteerVo
     * @return
     */
    public List<Volunteer> findVolunteerList(VolunteerVo volunteerVo) {
        return volunteerMapper.findVolunteerList(volunteerVo);
    }

    /**
     * 添加用户
     *
     * @param volunteer
     * @return
     */
    @Override
    public int addVolunteer(Volunteer volunteer) {
        volunteer.setRegistTime(new Date());//注册时间
        volunteer.setPassword(PasswordUtil.encode(SystemConstants.DEFAULT_PASSWORD));//密码
        volunteer.setStatus(1);//可用
        int count = volunteerMapper.addVolunteer(volunteer);
        return count;
    }


    public Volunteer findVolunteerByName(String loginName) {
        return volunteerMapper.findVolunteerByName(loginName);
    }

    public Volunteer getVolunteerByName(String loginName) {
        return volunteerMapper.getVolunteerByName(loginName);
    }

    /**
     * 根据用户名查询用户信息
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //创建角色列表集合
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        //调用根据用户名查询用户信息的方法
        Volunteer volunteer = volunteerMapper.findVolunteerByName(username);
        //创建User对象
        User user = new User(volunteer.getLoginName(),volunteer.getPassword(),
                volunteer.getStatus()==1,
                true,
                true,
                true,
                authorities);
        return user;
    }

    /**
     * 根据id志愿者信息
     * @param id
     * @return
     */
    public Volunteer queryVolunteerById(Long id) {
        return volunteerMapper.queryVolunteerById(id);
    }

    /**
     * 根据用户名-id查询志愿者信息
     * @param loginName
     * @return
     */
    public Volunteer getVolunteerByNameId(String loginName,Long id) {
        return volunteerMapper.getVolunteerByNameId(loginName,id);
    }

    /**
     * 统计志愿者行数
     * @return
     */
    public int getVolunteerCount(String idCard) {
        return volunteerMapper.getVolunteerCount(idCard);
    }

    /**
     * 修改志愿者
     * @param volunteer
     * @return
     */
    public int updateVolunteer(Volunteer volunteer) {
        return volunteerMapper.updateVolunteer(volunteer);
    }

    /**
     * 删除志愿者
     * @param id
     * @return
     */
    public int deleteById(Long id) {
        return volunteerMapper.deleteById(id);
    }

    /**
     * 修改志愿者密码
     * @param id
     * @return
     */
    public int resetPwd(Long id) {
        //创建用户对象
        Volunteer volunteer = new Volunteer();
        volunteer.setId(id);//用户ID
        volunteer.setPassword(PasswordUtil.encode(SystemConstants.DEFAULT_PASSWORD));
        return volunteerMapper.updateVolunteer(volunteer);
    }
}

