package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.ACheckIn;
import com.bao.entity.NetworkPV;
import com.bao.entity.VCheckIn;
import com.bao.service.ACheckInService;
import com.bao.service.NetworkPVService;
import com.bao.service.VCheckInService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.ACheckInVo;
import com.bao.vo.VCheckInVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/volunteerNetwork")
public class VEController {

   @Resource
    private VCheckInService vCheckInService;


    @Resource
    private NetworkPVService networkPVService;

    /**
     *  查询视频审核表
     * @param vCheckInVo
     * @return
     */
    @RequestMapping("/vCheckIn/list")
    public DataGridViewResult list(VCheckInVo vCheckInVo){
        //设置分页信息
        PageHelper.startPage(vCheckInVo.getPage(),vCheckInVo.getLimit());
        //调用方法
        List<VCheckIn> vCheckInList = vCheckInService.findVCheckInList(vCheckInVo);
        //创建分页对象
        PageInfo<VCheckIn> pageInfo = new PageInfo<>(vCheckInList);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }
    /**
     * 审核 视频表
     * @param vCheckIn
     * @return
     */
    @RequestMapping("/confirmVCheckIn")
    public String confirmOrders(VCheckIn vCheckIn){
        Map<String,Object> map = new HashMap<String,Object>();
        //申请表状态
        vCheckIn.setStatus(2);//已审核
        //调用修改的方法
        if(vCheckInService.update(vCheckIn) > 0){
            vCheckIn = vCheckInService.getVCheckInById(vCheckIn.getId());
            NetworkPV networkPV = new NetworkPV(vCheckIn.getName(),vCheckIn.getSrc(),vCheckIn.getImg());
            networkPVService.insertV(networkPV);
            map.put(SystemConstants.SUCCESS, true);
            map.put(SystemConstants.MESSAGE, OperateKey.CHECK_T);
        }else{
            map.put(SystemConstants.SUCCESS, false);
            map.put(SystemConstants.MESSAGE,OperateKey.CHECK_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 批量审核
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping("/batchConfirm")
    public String batchConfirm(String ids){
        Map<String,Object> map = new HashMap<String,Object>();
        int count = 0;
        //将字符串转换成数组
        String[] split = ids.split(",");
        for (int i = 0; i < split.length; i++) {
            VCheckIn vCheckIn = new VCheckIn();
            vCheckIn.setStatus(2);// 申请表状态，已确认
            vCheckIn.setId(Integer.valueOf(split[i]));//ID主键
            //调用修改方法
            count = vCheckInService.update(vCheckIn);
            if(count > 0){
                vCheckIn = vCheckInService.getVCheckInById(vCheckIn.getId());
                NetworkPV networkPV = new NetworkPV(vCheckIn.getName(),vCheckIn.getSrc(),vCheckIn.getImg());
                networkPVService.insertV(networkPV);

                map.put(SystemConstants.SUCCESS, true);
                map.put(SystemConstants.MESSAGE, OperateKey.CONFIRM_T);
            }
        }
        if(count <= 0){
            map.put(SystemConstants.SUCCESS, false);
            map.put(SystemConstants.MESSAGE,OperateKey.CONFIRM_F);
        }
        return JSON.toJSONString(map);
    }

}
