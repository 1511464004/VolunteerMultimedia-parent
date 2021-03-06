package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.Permission;
import com.bao.entity.Role;
import com.bao.entity.SysUser;
import com.bao.service.LogService;
import com.bao.service.PermissionService;
import com.bao.service.RoleService;
import com.bao.service.SysUserService;
import com.bao.utils.*;
import com.bao.vo.RoleVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/admin/role")
public class RoleController {

    @Resource
    private LogService logService;

    @Resource
    private RoleService roleService;

    @Resource
    private SysUserService userService;

    @Resource
    private PermissionService permissionService;

    /**
     * 查询角色列表
     * @param roleVo
     * @return
     */
    @RequestMapping("/list")
    public DataGridViewResult list(RoleVo roleVo, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());
        //设置分页信息
        PageHelper.startPage(roleVo.getPage(),roleVo.getLimit());
        //调用查询部门列表的方法
        List<Role> roleList = roleService.findRoleList(roleVo);
        //创建分页对象
        PageInfo<Role> pageInfo = new PageInfo<>(roleList);

        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.GROUP,"角色列表");
        logService.insert(log);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加角色
     * @param role
     * @return
     */
    @RequestMapping("/addRole")
    public String addRole(Role role, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (role.getRoleName() == null || role.getRoleName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，角色名称不能为空！");
            return JSON.toJSONString(map);
        }
        Role role1 = roleService.getRoleName(role.getRoleName());
        if (role1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个角色名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (roleService.insert(role) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE, OperateKey.INSERT_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.INSERT,LogKey.SINGLE,role.getRoleName() + LogKey.ROLE_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改角色
     * @param role
     * @return
     */
    @RequestMapping("/updateRole")
    public String updateDept(Role role, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (role.getRoleName() == null || role.getRoleName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，角色名称不能为空！");
            return JSON.toJSONString(map);
        }
        Role role1 = roleService.getRoleNameId(role.getRoleName(),role.getId());
        if (role1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个角色名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (roleService.updateRole(role) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE,LogKey.SINGLE,role.getRoleName() + "角色信息");
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除检查角色下是否存在用户信息
     * @param roleId
     * @return
     */
    @RequestMapping("/checkRoleHasUser")
    public String checkRoleHasUser(Integer roleId) {
        Map<String,Object> map = new HashMap<>();
        if (userService.getUserCountByRoleId(roleId) > 0) {
            map.put(SystemConstants.EXIST,true);
            map.put(SystemConstants.MESSAGE,"该角色下存在用户信息，无法删除");
        } else {
            map.put(SystemConstants.EXIST,false);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除角色
     * @param id
     * @return
     */
    @RequestMapping("/deleteById")
    public String deleteById(Integer id, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询删除角色
        Role role = roleService.getRoleId(id);

        Map<String,Object> map = new HashMap<>();
        if (roleService.deleteById(id) > 0) {
            roleService.deleteRolePermissionByRoleId(id);
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.DELETE,role.getRoleName() + LogKey.ROLE_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 初始化角色
     * @param
     * @return
     */
    @RequestMapping("/initRoleListByUserId")
    public DataGridViewResult initRoleListByUserId(Integer userId) {
        //调用查询所有角色列表的方法
        List<Map<String,Object>> roleListByMap = roleService.findRoleListByMap();
        //根据用户ID查询该用户拥有的角色列表
        List<Integer> roleListWithUserId = roleService.findRoleListWithUserId(userId);
        //循环遍历两个集合的数据是否出现相同的值(选中复选框)
        for (Map<String,Object> map : roleListByMap) {
            boolean flag = false;//默认不选中
            //获取角色ID
            Integer roleId = (Integer)map.get("id");
            //内层循环遍历拥有的角色列表
            for (Integer rid : roleListWithUserId) {
                //比较两个集合中的角色ID是否相等
                if (rid == roleId) {
                    //修改状态值
                    flag = true;
                    break;
                }
            }
            //将状态保存到map集合中
            map.put("LAY_CHECKED",flag);
        }
        //返回数据
        return new DataGridViewResult(roleListByMap);
    }

    @RequestMapping("/initMenuTree")
    public DataGridViewResult initMenuTree(Integer roleId) {
        //调用查询所有菜单权限列表的方法
        List<Permission> permissionList = permissionService.findPermissionList(null);
        //调用角色ID查询该角色已经拥有的菜单ID方法
        List<Integer> currentRolePermissionIds = permissionService.findPermissionByRoleId(roleId);
        //定义集合保存菜单信息
        List<Permission> currentPermissions = new ArrayList<>();
        //判断集合是否存在数据
        if (currentRolePermissionIds != null && currentRolePermissionIds.size() > 0) {
            //根据菜单ID查询该菜单的信息
            currentPermissions = permissionService.findPermissionById(currentRolePermissionIds);
        }

        //创建菜单列表节点集合
        List<TreeNode> treeNodes = new ArrayList<>();
        //循环遍历权限菜单列表
        for (Permission permission : permissionList) {
            //定义变量，标识是否选中
            String checkArr = "0";//0表示复选框不选中

            //内层循环遍历当前角色拥有的权限菜单
            //循环比较的原因：比较两个集合中的数据是否有相同的的，有则表示当前角色拥有这个权限
            for (Permission currentPermission : currentPermissions) {
                //如果ID相等，表示当前角色拥有这个菜单，有则复选框选中
                if (permission.getId() == currentPermission.getId()) {
                    checkArr = "1";
                    break;
                }
            }

            //定义变量，标识菜单是否展开
            Boolean spread = (permission.getSpread() == null || permission.getSpread() == 1) ? true : false;
            treeNodes.add(new TreeNode(permission.getId(),permission.getPid(),permission.getTitle(),spread,checkArr));
        }
        return new DataGridViewResult(treeNodes);
    }

    /**
     * 保存角色菜单关系
     * @param permissionIds
     * @param roleId
     * @return
     */
    @RequestMapping("/saveRolePermission")
    public String saveRolePermission(String permissionIds,Integer roleId, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //查询分配角色
        Role role = roleService.getRoleId(roleId);
        Map<String,Object> map = new HashMap<>();
        if (roleService.saveRolePermission(permissionIds,roleId)) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.PERMISSION_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.ALLOT, role.getRoleName() + LogKey.PERMISSION_INFO);
            logService.insert(log);

        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.PERMISSION_F);
        }
        return JSON.toJSONString(map);
    }

}
