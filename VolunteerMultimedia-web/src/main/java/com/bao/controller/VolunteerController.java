package com.bao.controller;

import com.bao.entity.Log;
import com.bao.entity.Volunteer;
import com.bao.service.VolunteerService;
import com.bao.utils.LogKey;
import com.bao.utils.OperateKey;
import com.bao.utils.PasswordUtil;
import com.bao.utils.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/volunteer")
public class VolunteerController {

    @Resource
    private VolunteerService volunteerService;

    /**
     * 注册
     * @param volunteer
     * @return
     */
    @ResponseBody
    @RequestMapping("/register")
    public Map<String,Object> register(Volunteer volunteer){
        Map<String,Object> map = new HashMap<>();
        //志愿者编号
        String idCard = new SimpleDateFormat("yyyyMMdd").format(new Date());
        int count = volunteerService.getVolunteerCount(idCard) + 1;
        volunteer.setIdCard( idCard + count);

        if (volunteerService.addVolunteer(volunteer) > 0){
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,"恭喜您，注册成功");
        }else{
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"很遗憾，注册失败");
        }
        return map;
    }

    /**
     * 检查用户名是否存在
     * @param loginName
     * @return
     */
    @ResponseBody
    @RequestMapping("/checkName")
    public Map<String,Object> checkName(String loginName){
        Map<String,Object> map = new HashMap<>();
        if (volunteerService.findVolunteerByName(loginName)!=null){
            map.put(SystemConstants.EXIST,true);
            map.put(SystemConstants.MESSAGE,"用户名已存在，请重新输入");
        }else{
            map.put(SystemConstants.EXIST,false);
            map.put(SystemConstants.MESSAGE,"用户名可以使用");
        }
        return map;
    }

    /**
     * 首页 - > 跳转修改个人信息页面
     * @return
     */
    @RequestMapping("/toUpdate.html")
    public String toUpdate(Model model, String loginName) {
        //查询当前登录用户
        Volunteer loginUser = volunteerService.getVolunteerByName(loginName);
        model.addAttribute("volunteer",loginUser);
        return "forward:/update.jsp";
    }

    /**
     * 修改个人信息
     * @return
     */
    @RequestMapping("/update")
    public String update(Volunteer volunteer,Model model) {

        if (volunteer.getLoginName() == "" || volunteer.getPhone() == ""
                || volunteer.getLoginName() == null || volunteer.getPhone() == null ) {
            model.addAttribute("msg","提交的是空值，请重新输入！");
            return "forward:/update.jsp";
        }
        Volunteer volunteer1 = volunteerService.queryVolunteerById(volunteer.getId());
        if (volunteer1.equals(volunteer) ) {
            model.addAttribute("msg","您未做出改变，请重新输入！");
            return "forward:/update.jsp";
        }
        int i = volunteerService.updateVolunteer(volunteer);
        if (i > 0) {
            model.addAttribute("msg","修改成功！");
            //查询当前登录用户
            Volunteer loginUser = volunteerService.getVolunteerByName(volunteer.getLoginName());
            model.addAttribute("volunteer",loginUser);
            return "forward:/update.jsp";
        } else {
            model.addAttribute("msg","修改失败，请重新输入！");
            return "forward:/update.jsp";
        }
    }

    /**
     * 修改密码
     * @return
     */
    @RequestMapping("/updatePassword")
    public String updateUserPassword(Model model, Volunteer loginUser) {
        //查询当前登录用户
        Volunteer volunteer = volunteerService.queryVolunteerById(loginUser.getId());

        if (loginUser.getPassword() == null || loginUser.getPassword() == "") {
            model.addAttribute("msgPassword","修改失败，用户密码不能为空！");
            model.addAttribute("volunteer",volunteer);
            return "forward:/update.jsp";
        }

        loginUser.setPassword(PasswordUtil.encode(loginUser.getPassword()));
        if (volunteerService.updateVolunteer(loginUser) > 0) {
            model.addAttribute("msgPassword", OperateKey.UPDATE_S);
        } else {
            model.addAttribute("msgPassword", OperateKey.UPDATE_F);
        }

        //查询当前登录用户
        Volunteer v = volunteerService.queryVolunteerById(loginUser.getId());
        model.addAttribute("volunteer",v);
        return "forward:/update.jsp";
    }
}
