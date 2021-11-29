package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.ACheckIn;
import com.bao.entity.NetworkPV;
import com.bao.entity.VActivity;
import com.bao.service.ACheckInService;
import com.bao.service.NetworkPVService;
import com.bao.service.VActivityService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.ACheckInVo;
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
@RequestMapping("/volunteerApp")
public class VAController {

   @Resource
    private ACheckInService aCheckInService;

   @Resource
   private VActivityService vActivityService;


    /**
     *  查询申请表
     * @param aCheckInVo
     * @return
     */
    @RequestMapping("/aCheckIn/list")
    public DataGridViewResult list(ACheckInVo aCheckInVo){
        //设置分页信息
        PageHelper.startPage(aCheckInVo.getPage(),aCheckInVo.getLimit());
        //调用方法
        List<ACheckIn> aCheckInList = aCheckInService.findACheckInList(aCheckInVo);
        //创建分页对象
        PageInfo<ACheckIn> pageInfo = new PageInfo<>(aCheckInList);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }
    /**
     * 确认申请表
     * @param aCheckIn
     * @return
     */
    @RequestMapping("/confirmACheckIn")
    public String confirmOrders(ACheckIn aCheckIn){
        Map<String,Object> map = new HashMap<String,Object>();
        //申请表状态
        aCheckIn.setStatus(2);//已确认
        //调用修改的方法
        if(aCheckInService.update(aCheckIn) > 0){
            aCheckIn = aCheckInService.getAById(aCheckIn.getId());
            VActivity vActivity = vActivityService.getVAID(aCheckIn.getA_id());
            vActivity.setNumber(vActivity.getNumber() + 1);
            vActivityService.updateVActivity(vActivity);

            map.put(SystemConstants.SUCCESS, true);
            map.put(SystemConstants.MESSAGE, OperateKey.CONFIRM_T);
        }else{
            map.put(SystemConstants.SUCCESS, false);
            map.put(SystemConstants.MESSAGE,OperateKey.CONFIRM_F);
        }
        return JSON.toJSONString(map);
    }

    /**
     * 批量确认
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
            ACheckIn aCheckIn = new ACheckIn();
            aCheckIn.setStatus(2);// 申请表状态，已确认
            aCheckIn.setId(Integer.valueOf(split[i]));//ID主键
            //调用修改方法
            count = aCheckInService.update(aCheckIn);
            if(count > 0){
                aCheckIn = aCheckInService.getAById(aCheckIn.getId());
                VActivity vActivity = vActivityService.getVAID(aCheckIn.getA_id());
                vActivity.setNumber(vActivity.getNumber() + 1);
                vActivityService.updateVActivity(vActivity);

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
