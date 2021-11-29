package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.entity.NetworkPV;
import com.bao.entity.SysUser;
import com.bao.entity.Volunteer;
import com.bao.service.NetworkPVService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.LogKey;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.NetworkPVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/admin/network")
public class NetworkController {

    @Resource
    private NetworkPVService networkPVService;

    /**
     * 查询志愿者网列表
     * @param networkPVo
     * @return
     */
    @RequestMapping("/list")
    public DataGridViewResult list(NetworkPVo networkPVo) {
        //设置分页信息
        PageHelper.startPage(networkPVo.getPage(),networkPVo.getLimit());
        //调用查询部门列表的方法
        List<NetworkPV> networkPVList = networkPVService.findNetworkPV();
        //创建分页对象
        PageInfo<NetworkPV> pageInfo = new PageInfo<>(networkPVList);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }


    /**
     * 删除视频
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteById")
    public String deleteById(Integer id) {
        Map<String,Object> map = new HashMap<>();
        if (networkPVService.deleteById(id) > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE, OperateKey.DELETE_S);

        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,OperateKey.DELETE_F);
        }
        return JSON.toJSONString(map);
    }
}
