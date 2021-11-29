package com.bao.controller;

import com.bao.service.LeiFengHotlineService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/leiFengHotline")
public class LeiFengHotlineController {

    @Resource
    private LeiFengHotlineService leiFengHotlineService;

    /**
     * 查询志愿者网列表
     * @return
     */
    @RequestMapping("/findLeiFengHotlineList")
    public String findLeiFengHotlineList() {
        return leiFengHotlineService.findLHotList();
    }

}
