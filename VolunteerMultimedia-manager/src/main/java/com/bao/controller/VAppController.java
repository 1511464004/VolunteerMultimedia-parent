package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.SysUser;
import com.bao.entity.VActivity;
import com.bao.entity.Volunteer;
import com.bao.service.LogService;
import com.bao.service.SysUserService;
import com.bao.service.VActivityService;
import com.bao.service.VolunteerService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.LogKey;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.VActivityVo;
import com.bao.vo.VolunteerVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin/vApp")
public class VAppController {

    @Resource
    private VActivityService vActivityService;




    @ResponseBody
    @RequestMapping("/list")
    public DataGridViewResult list(VActivityVo vActivityVo){
        //设置分页信息
        PageHelper.startPage(vActivityVo.getPage(),vActivityVo.getLimit());
        //调用查询的方法
        List<VActivity> vActivityList =  vActivityService.findVActivityList(vActivityVo);
        //创建分页对象
        PageInfo<VActivity> pageInfo = new PageInfo<>(vActivityList);
        //返回对象
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加活动
     * @param vActivity
     * @return
     */
    @ResponseBody
    @RequestMapping("/addVApp")
    public String addDept(VActivity vActivity) {
        Map<String,Object> map = new HashMap<>();
        if (vActivity.getName() == null || vActivity.getName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，活动名称不能为空！");
            return JSON.toJSONString(map);
        }
        VActivity vActivity1 = vActivityService.getVAName(vActivity.getName());
        if (vActivity1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"添加失败，这个活动名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (vActivityService.addVA(vActivity) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_S);

        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.INSERT_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 修改活动
     * @param vActivity
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateVApp")
    public String updateVApp(VActivity vActivity) {

        Map<String,Object> map = new HashMap<>();
        if (vActivity.getName() == null || vActivity.getName() == "") {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，活动名称不能为空！");
            return JSON.toJSONString(map);
        }
        VActivity vActivity1 = vActivityService.getVANameID(vActivity.getName(),vActivity.getId());
        if (vActivity1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"修改失败，这个活动名称已经存在！");
            return JSON.toJSONString(map);
        }
        if (vActivityService.updateVActivity(vActivity) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_S);
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.UPDATE_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 删除活动
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteById")
    public String deleteById(Integer id) {
        Map<String,Object> map = new HashMap<>();
        if (vActivityService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_S);

        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE, OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }

}
