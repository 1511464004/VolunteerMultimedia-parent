package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.SysUser;
import com.bao.entity.Volunteer;
import com.bao.service.LogService;
import com.bao.service.SysUserService;
import com.bao.service.VolunteerService;
import com.bao.utils.*;
import com.bao.vo.UserVo;
import com.bao.vo.VolunteerVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin/volunteer")
public class VolunteerController {

    @Resource
    private SysUserService userService;

    @Resource
    private VolunteerService volunteerService;

    @Resource
    private LogService logService;


    @ResponseBody
    @RequestMapping("/list")
    public DataGridViewResult list(VolunteerVo volunteerVo, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //设置分页信息
        PageHelper.startPage(volunteerVo.getPage(),volunteerVo.getLimit());
        //调用查询的方法
        List<Volunteer> volunteerList =  volunteerService.findVolunteerList(volunteerVo);
        //创建分页对象
        PageInfo<Volunteer> pageInfo = new PageInfo<>(volunteerList);
        //返回对象

        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.GROUP,"志愿者列表");
        logService.insert(log);
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加志愿者
     * @param volunteer
     * @return
     */
    @ResponseBody
    @RequestMapping("/addVolunteer")
    public String addDept(Volunteer volunteer ,Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (volunteer.getLoginName() == null || volunteer.getLoginName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，志愿者用户名不能为空！");
            return JSON.toJSONString(map);
        }
        Volunteer volunteer1 = volunteerService.getVolunteerByName(volunteer.getLoginName());
        if (volunteer1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个志愿者用户名已经存在！");
            return JSON.toJSONString(map);
        }
        if (volunteerService.addVolunteer(volunteer) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.INSERT,volunteer.getLoginName() + LogKey.VOLUNTEER_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改志愿者
     * @param volunteer
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateVolunteer")
    public String updateUser(Volunteer volunteer, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (volunteer.getLoginName() == null || volunteer.getLoginName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，志愿者用户名不能为空！");
            return JSON.toJSONString(map);
        }
        Volunteer volunteer1 = volunteerService.getVolunteerByNameId(volunteer.getLoginName(),volunteer.getId());
        if (volunteer1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个志愿者用户名已经存在！");
            return JSON.toJSONString(map);
        }
        if (volunteerService.updateVolunteer(volunteer) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE,volunteer.getLoginName() + LogKey.VOLUNTEER_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除志愿者
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteById")
    public String deleteById(Long id, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询删除志愿者
        Volunteer volunteer = volunteerService.queryVolunteerById(id);
        Map<String,Object> map = new HashMap<>();
        if (volunteerService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.DELETE,volunteer.getLoginName() + LogKey.VOLUNTEER_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }
    /**
     * 重置密码
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/resetPwd")
    public String resetPwd(Long id, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询密码重置志愿者
        Volunteer volunteer = volunteerService.queryVolunteerById(id);
        Map<String,Object> map = new HashMap<>();
        if (volunteerService.resetPwd(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.PASSWORD_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.RESET,volunteer.getLoginName() + "密码");
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.PASSWORD_F);
        }
        return JSON.toJSONString(map);
    }

}
