package com.bao.controller;


import com.bao.entity.Volunteer;
import com.bao.service.VolunteerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
public class IndexController {

    @Resource
    private VolunteerService volunteerService;

    @RequestMapping("/index")
    public String index(Model model,Principal principal){
        //查询当前登录用户
        if (principal != null) {
            Volunteer volunteer = volunteerService.getVolunteerByName(principal.getName());
            model.addAttribute("volunteer",volunteer);
        }
        //返回逻辑视图名
        return "forward:/index.jsp";
    }

    /**
     * 修改 -> 首页
     * @param model
     * @param loginName
     * @return
     */
    @RequestMapping("/index.html")
    public String toIndex(Model model,String loginName){
        Volunteer volunteer = volunteerService.getVolunteerByName(loginName);
        model.addAttribute("volunteer",volunteer);
        return "forward:/index.jsp";
    }

    /**
     * 注销
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();//清空session数据
        return "redirect:/";
    }

}
