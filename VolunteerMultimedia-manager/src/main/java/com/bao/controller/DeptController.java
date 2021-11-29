package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Dept;
import com.bao.entity.Log;
import com.bao.entity.Role;
import com.bao.entity.SysUser;
import com.bao.service.DeptService;
import com.bao.service.LogService;
import com.bao.service.SysUserService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.LogKey;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.DeptVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.beans.DefaultPersistenceDelegate;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/admin/dept")
public class DeptController {

    @Resource
    private LogService logService;

    @Resource
    private DeptService deptService;

    @Resource
    private SysUserService userService;

    /**
     * 查询部门列表
     * @param deptVo
     * @return
     */
    @RequestMapping("/list")
    public DataGridViewResult list(DeptVo deptVo, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        //设置分页信息
        PageHelper.startPage(deptVo.getPage(),deptVo.getLimit());
        //调用查询部门列表的方法
        List<Dept> deptList = deptService.findDeptList(deptVo);
        //创建分页对象
        PageInfo<Dept> pageInfo = new PageInfo<>(deptList);

        //插入日志
        Log log = new Log(loginUser.getUserName(), LogKey.SELECT,LogKey.GROUP,"部门列表");
        logService.insert(log);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加部门
     * @param dept
     * @return
     */
    @RequestMapping("/addDept")
    public String addDept(Dept dept, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (dept.getDeptName() == null || dept.getDeptName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，部门名称不能为空！");
            return JSON.toJSONString(map);
        }
        Dept dept1 = deptService.getDeptByDeptName(dept.getDeptName());
        if (dept1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个部门名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (deptService.insert(dept) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE, OperateKey.INSERT_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.INSERT,LogKey.SINGLE, dept.getDeptName() + LogKey.DEPT_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改部门
     * @param dept
     * @return
     */
    @RequestMapping("/updateDept")
    public String updateDept(Dept dept, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();
        if (dept.getDeptName() == null || dept.getDeptName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，部门名称不能为空！");
            return JSON.toJSONString(map);
        }
        Dept dept1 = deptService.getDeptNameId(dept.getDeptName(),dept.getId());
        if (dept1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个部门名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (deptService.updateDept(dept) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.UPDATE,LogKey.SINGLE, dept.getDeptName() + LogKey.DEPT_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除检查
     * @param deptId
     * @return
     */
    @RequestMapping("/checkDeptHasUser")
    public String checkDeptHasUser(Integer deptId){
        Map<String,Object> map = new HashMap<>();
        if (userService.getUserCountByDeptId(deptId) > 0) {
            map.put(SystemConstants.EXIST,true);
            map.put(SystemConstants.MESSAGE,"该部门下存在用户信息，无法删除");
        } else {
            map.put(SystemConstants.EXIST,false);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除部门
     * @param id
     * @return
     */
    @RequestMapping("/deleteById")
    public String deleteById(Integer id, Principal principal) {
        //查询当前登录用户
        SysUser loginUser = userService.getUserByUserName(principal.getName());

        Map<String,Object> map = new HashMap<>();

        //查询删除角色
        Dept dept = deptService.getDeptId(id);
        if (deptService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

            //插入日志
            Log log = new Log(loginUser.getUserName(), LogKey.DELETE,LogKey.SINGLE, dept.getDeptName() + LogKey.DEPT_INFO);
            logService.insert(log);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 查询部门列表
     * @return
     */
    @RequestMapping("/findDeptList")
    public String findDeptList() {
        return deptService.findDeptList();
    }
}
