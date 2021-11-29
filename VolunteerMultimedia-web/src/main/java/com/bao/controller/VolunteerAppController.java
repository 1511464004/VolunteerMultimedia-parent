package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.ACheckIn;
import com.bao.entity.VActivity;
import com.bao.entity.Volunteer;
import com.bao.service.ACheckInService;
import com.bao.service.VActivityService;
import com.bao.service.VolunteerAppService;
import com.bao.service.VolunteerService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.OperateKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.ACheckInVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import sun.dc.pr.PRError;

import javax.annotation.Resource;
import java.security.Principal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/volunteerApp")
public class VolunteerAppController {

    @Resource
    private VolunteerAppService volunteerAppService;

    @Resource
    private VActivityService vActivityService;

    @Resource
    private VolunteerService volunteerService;

    @Resource
    private ACheckInService aCheckInService;

    /**
     * 查询志愿者网列表
     * @return
     */
    @ResponseBody
    @RequestMapping("/findVolunteerAppList")
    public String findVolunteerAppList() {
        return volunteerAppService.findVAppList();
    }

    /**
     * 申请活动
     * @param a_id
     * @param v_id
     * @return
     */
    @RequestMapping("/toAdda/toAdda.html")
    public String toVAModle(Integer a_id, Integer v_id, Model model, Principal principal){
        //查询当前登录用户
        if (principal != null) {
            Volunteer volunteer = volunteerService.getVolunteerByName(principal.getName());
            model.addAttribute("volunteer",volunteer);
        }
        VActivity vActivity = vActivityService.getVAID(a_id);
        model.addAttribute("vActivity",vActivity);
        ACheckIn aCheckIn = aCheckInService.getACheckInById(a_id,v_id);
        model.addAttribute("aCheckIn",aCheckIn);
        return "/volunteerApp/vAmodel";
    }

    /**
     * 立即报名
     * @return
     */
    @ResponseBody
    @RequestMapping("/addACheckIn")
    public String addOrders(ACheckIn aCheckIn){
        Map<String,Object> map = new HashMap<>();
        ACheckIn aCheckIn1 = aCheckInService.getACheckInById(aCheckIn.getA_id(),aCheckIn.getV_id());
        if (aCheckIn1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"报名失败,你已经报名，无需重复操作");
            return JSON.toJSONString(map);
        }
        aCheckIn.setStatus(1);
        aCheckIn.setCreateDate(new Date());
        if(aCheckInService.addACheckIn(aCheckIn) > 0){
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,"报名成功");
        }else{
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"报名失败");
        }
        return JSON.toJSONString(map);
    }

}
