package com.bao.service.impl;

import com.bao.dao.RoleMapper;
import com.bao.entity.Role;
import com.bao.entity.SysUser;
import com.bao.service.RoleService;
import com.bao.vo.RoleVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service
@Transactional
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    /**
     * 查询角色列表
     *
     * @param roleVo
     * @return
     */
    public List<Role> findRoleList(RoleVo roleVo) {
        return roleMapper.findRoleList(roleVo);
    }

    public int insert(Role record) {
        return roleMapper.insert(record);
    }

    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    public int deleteById(Integer id) {
        return roleMapper.deleteById(id);
    }

    @Override
    public void deleteRolePermissionByRoleId(Integer roleId) {
        //删除原有的角色菜单关系
        roleMapper.deleteRolePermissionByRoleId(roleId);
    }

    /**
     * 查询所有角色
     *
     * @return
     */
    public List<Map<String, Object>> findRoleListByMap() {
        return roleMapper.findRoleListByMap();
    }

    /**
     * 根据用户ID查询该用户拥有的角色列表(只查询角色ID)
     *
     * @param userId
     * @return
     */
    public List<Integer> findRoleListWithUserId(Integer userId) {
        return roleMapper.findRoleListWithUserId(userId);
    }

    public boolean saveRolePermission(String permissionIds, Integer roleId) {
        try {
            //删除原有的角色菜单关系
            roleMapper.deleteRolePermissionByRoleId(roleId);
            //将权限菜单字符串拆分成数组
            String[] ids = permissionIds.split(",");
            //循环添加角色菜单关系
            for (int i = 0; i < ids.length; i++) {
               roleMapper.saveRolePermission(Integer.valueOf(ids[i]),roleId);
            }
            return true;
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Role getRoleName(String roleName) {
        return roleMapper.getRoleName(roleName);
    }

    @Override
    public Role getRoleNameId(String roleName, Integer id) {
        return roleMapper.getRoleNameId(roleName,id);
    }

    /**
     * 根据角色id查询用户信息
     * @return
     */
    @Override
    public Role getRoleId(Integer id) {
        return roleMapper.getRoleId(id);
    }
}
