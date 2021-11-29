package com.bao.service;

import com.bao.entity.Role;
import com.bao.entity.SysUser;
import com.bao.vo.RoleVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface RoleService {
    /**
     * 查询角色列表
     * @param roleVo
     * @return
     */
    List<Role> findRoleList(RoleVo roleVo);

    /**
     * 添加角色
     * @param record
     * @return
     */
    int insert(Role record);

    /**
     * 修改角色
     * @param role
     * @return
     */
    int updateRole(Role role);

    /**
     * 删除角色
     * @param id
     * @return
     */
    int deleteById(Integer id);

    /**
     * 删除角色菜单关系
     * @param roleId
     */
    void deleteRolePermissionByRoleId(Integer roleId);

    /**
     * 查询所有角色
     * @return
     */
    List<Map<String,Object>> findRoleListByMap();


    /**
     * 根据用户ID查询该用户拥有的角色列表(只查询角色ID)
     * @param userId
     * @return
     */
    List<Integer> findRoleListWithUserId(Integer userId);

    /**
     * 保存角色菜单关系
     * @param permissionIds
     * @param roleId
     * @return
     */
    boolean saveRolePermission(String permissionIds, Integer roleId);

    /**
     * 根据角色名查询角色信息
     * @param userName
     * @return
     */
    Role getRoleName(String userName);

    /**
     * 根据角色名-id查询角色信息
     * @param roleName
     * @return
     */
    Role getRoleNameId(String roleName, Integer id);

    /**
     * 根据角色id查询用户信息
     * @return
     */
    Role getRoleId(Integer id);
}
