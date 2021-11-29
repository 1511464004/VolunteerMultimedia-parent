package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.Permission;
import com.bao.entity.Role;
import com.bao.entity.SysUser;
import com.bao.service.LogService;
import com.bao.service.PermissionService;
import com.bao.service.SysUserService;
import com.bao.utils.*;
import com.bao.vo.PermissionVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/admin/permission")
public class PermissionController {

    @Resource
    private LogService logService;

    @Resource
    private SysUserService userService;

    @Resource
    private PermissionService permissionService;

    /**
     * 加载树形菜单
     * @return
     */
    @RequestMapping("/loadMenuTree")
    public DataGridViewResult loadMenuTree() {
        //调用查询所有菜单权限列表的方法
        List<Permission> permissionList = permissionService.findPermissionList(null);
        //创建树形节点集合
        List<TreeNode> treeNodes = new ArrayList<>();
        //循环遍历权限菜单列表集合
        for (Permission permission : permissionList) {
            //是否展开，如果状态为空或状态为1表示节点处于展开状态
            boolean spread = (permission.getSpread() == null || permission.getSpread() == 1) ? true : false;
            //将数据放到节点集合中
            treeNodes.add(new TreeNode(permission.getId(),permission.getPid(),permission.getTitle(),spread));
        }
        return new DataGridViewResult(treeNodes);
    }

    /**
     * 查询权限菜单列表
     * @param permissionVo
     * @return
     */
    @RequestMapping("/list")
    public DataGridViewResult list(PermissionVo permissionVo, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //设置分页信息
        PageHelper.startPage(permissionVo.getPage(),permissionVo.getLimit());
        //调用查询方法
        List<Permission> permissionList = permissionService.findPermissionList(permissionVo);
        //创建分页对象
        PageInfo<Permission> pageInfo = new PageInfo<>(permissionList);

        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.GROUP,"权限列表");
        logService.insert(log);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加菜单
     * @param permission
     * @return
     */
    @ResponseBody
    @RequestMapping("/addPermission")
    public String addPermission(Permission permission, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (permission.getTitle() == null || permission.getTitle() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，菜单名称不能为空！");
            return JSON.toJSONString(map);
        }
        Permission permission1 = permissionService.getTitle(permission.getTitle());
        if (permission1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个菜单名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (permissionService.insert(permission) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE, OperateKey.INSERT_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.INSERT,LogKey.SINGLE,permission.getTitle() + LogKey.PERMISSION_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE, OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改菜单
     * @param permission
     * @return
     */
    @ResponseBody
    @RequestMapping("/updatePermission")
    public String updatePermission(Permission permission, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (permission.getTitle() == null || permission.getTitle() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，菜单名称不能为空！");
            return JSON.toJSONString(map);
        }
        Permission permission1 = permissionService.getTitleId(permission.getTitle(),permission.getId());
        if (permission1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个菜单名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (permissionService.update(permission) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE,LogKey.SINGLE,permission.getTitle() + LogKey.PERMISSION_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除检查菜单下是否有子菜单
     * @param id
     * @return
     */
    @RequestMapping("/checkPermission")
    public String checkPermission(Integer id) {
        Map<String,Object> map = new HashMap<>();
        if (permissionService.getPermissionCountById(id) > 0) {
            map.put(SystemConstants.EXIST,true);
            map.put(SystemConstants.MESSAGE,"该菜单下存在子菜单，无法删除");
        } else {
            map.put(SystemConstants.EXIST,false);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除部菜单
     * @param id
     * @return
     */
    @RequestMapping("/deleteById")
    public String deleteById(Integer id, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询删除权限
        Permission permission = permissionService.getPermissionId(id);
        Map<String,Object> map = new HashMap<>();
        if (permissionService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.DELETE, permission.getTitle() + LogKey.PERMISSION_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }

}
