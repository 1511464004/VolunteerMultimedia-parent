package com.bao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class PageCongtroller {

    /**
     * 跳转部门管理页面
     * @return
     */
    @RequestMapping("/toDeptManager.html")
    public String toDeptManager() {
        return "dept/deptManager";
    }

    /**
     * 跳转角色管理页面
     * @return
     */
    @RequestMapping("/toRoleManager.html")
    public String toRoleManager() {
        return "role/roleManager";
    }

    /**
     * 跳转用户管理页面
     * @return
     */
    @RequestMapping("/toUserManager.html")
    public String toUserManager() {
        return "user/userManager";
    }

    /**
     * 跳转权限管理页面
     * @return
     */
    @RequestMapping("/toPermissionManager.html")
    public String toPermissionManager() {
        return "permission/permissionManager";
    }

    /**
     * 跳转欢迎页面
     * @return
     */
    @RequestMapping("/welcome.html")
    public String toWelcome() {
        return "welcome";
    }

    /**
     * 跳转日志页面
     * @return
     */
    @RequestMapping("/toLogInfo.html")
    public String toLogInfo() {
        return "log/logInfo";
    }

    /**
     * 跳转志愿者管理页面
     * @return
     */
    @RequestMapping("/toVolunteerManager.html")
    public String toVolunteerManager() {
        return "volunteer/volunteerManager";
    }

    /**
     * 跳转志愿者网管理页面
     * @return
     */
    @RequestMapping("/toNetworkManager.html")
    public String toNetworkManager() {
        return "volunteer/networkManager";
    }

    /**
     * 跳转志愿者APP活动管理页面
     * @return
     */
    @RequestMapping("/toActivityManager.html")
    public String toActivityManager() {
        return "volunteer/activityManager";
    }

    /**
     * 跳转志愿者APP活动确认管理页面
     * @return
     */
    @RequestMapping("/toACheckInManager.html")
    public String toACheckInManager() {
        return "volunteer/aCheckInManager";
    }

    /**
     * 跳转志愿者APP视频审核管理页面
     * @return
     */
    @RequestMapping("/toVCheckInManager.html")
    public String toVCheckInManager() {
        return "volunteer/vCheckInManager";
    }

}
