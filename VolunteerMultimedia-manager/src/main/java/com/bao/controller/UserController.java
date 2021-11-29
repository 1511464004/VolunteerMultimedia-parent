package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.SysUser;
import com.bao.service.LogService;
import com.bao.service.SysUserService;
import com.bao.utils.*;
import com.bao.vo.UserVo;
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
@RequestMapping("/admin/user")
public class UserController {

    @Resource
    private SysUserService userService;

    @Resource
    private LogService logService;

    /**
     * 基本资料
     * @return
     */
    @RequestMapping("/info")
    public String info(Model model, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        model.addAttribute("loginUser",loginUser);
        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.SINGLE,"个人基本资料");
        logService.insert(log);
        return "/user/userInfo";
    }

    /**
     * 跳转修改密码
     * @return
     */
    @RequestMapping("/toPassword")
    public String updatePassword(Model model, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        model.addAttribute("loginUser",loginUser);
        return "/user/updatePassword";
    }

    /**
     * 修改密码
     * @return
     */
    @RequestMapping("/updateUserPassword")
    public String updateUserPassword(Model model, SysUser sysUser, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        if (sysUser.getPassword() == null || sysUser.getPassword() == "") {
            model.addAttribute("msg","修改失败，用户密码不能为空！");
        }
        sysUser.setPassword(PasswordUtil.encode(sysUser.getPassword()));
        if (userService.updateUser(sysUser) > 0) {
            model.addAttribute("msg",OperateKey.UPDATE_S);
            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE, "个人密码");
            logService.insert(log);
        } else {
            model.addAttribute("msg",OperateKey.UPDATE_F);
        }
        return "/user/updatePassword";
    }
    /**
     * 注销
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();//清空session数据
        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping("/list")
    public DataGridViewResult list(UserVo userVo,Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        //如果当前登录用户是普通用户，则只能查询userType为2的用户信息
        if (loginUser != null && loginUser.getUserType() == 2) {
            userVo.setUserType(2);
        }

        //设置分页信息
        PageHelper.startPage(userVo.getPage(),userVo.getLimit());
        //调用查询的方法
        List<SysUser> userList =  userService.findUserList(userVo);
        //创建分页对象
        PageInfo<SysUser> pageInfo = new PageInfo<>(userList);
        //返回对象

        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.GROUP,"用户列表");
        logService.insert(log);
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加用户
     * @param sysUser
     * @return
     */
    @ResponseBody
    @RequestMapping("/addUser")
    public String addDept(SysUser sysUser ,Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        //创建人
        sysUser.setCreatedBy(loginUser.getId());

        Map<String,Object> map = new HashMap<>();
        if (sysUser.getUserName() == null || sysUser.getUserName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，用户名字不能为空！");
            return JSON.toJSONString(map);
        }
        SysUser sysUser1 = userService.getUserByUserName(sysUser.getUserName());
        if (sysUser1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个用户名字已经存在！");
            return JSON.toJSONString(map);
        }
        if (userService.insert(sysUser) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.INSERT,sysUser.getUserName() + LogKey.USER_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改用户
     * @param sysUser
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateUser")
    public String updateUser(SysUser sysUser, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        //修改人
        sysUser.setModifyBy(loginUser.getId());

        Map<String,Object> map = new HashMap<>();
        if (sysUser.getUserName() == null || sysUser.getUserName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，用户名字不能为空！");
            return JSON.toJSONString(map);
        }
        SysUser sysUser1 = userService.getUserUserNameId(sysUser.getUserName(),sysUser.getId());
        if (sysUser1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个用户名字已经存在！");
            return JSON.toJSONString(map);
        }
        if (userService.updateUser(sysUser) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE,sysUser.getUserName() + LogKey.USER_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteById")
    public String deleteById(Integer id, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询删除用户
        SysUser sysUser = userService.getUserUserId(id);
        Map<String,Object> map = new HashMap<>();
        if (userService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.DELETE,sysUser.getUserName() + LogKey.USER_INFO);
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
    public String resetPwd(Integer id, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询密码重置用户
        SysUser sysUser = userService.getUserUserId(id);
        Map<String,Object> map = new HashMap<>();
        if (userService.resetPwd(id,loginUser.getId()) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.PASSWORD_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.RESET,sysUser.getUserName() + "密码");
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.PASSWORD_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 分配角色
     * @param ids
     * @param userId
     * @return
     */
    @ResponseBody
    @RequestMapping("/grantRole")
    public String grantRole(String ids,Integer userId, Principal principal) {
        //获取当前登录用户信息
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (userService.saveUserRole(ids,userId)) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.ROLE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.ALLOT, LogKey.GROUP, "角色");
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.ROLE_F);
        }
        return JSON.toJSONString(map);
    }
}
