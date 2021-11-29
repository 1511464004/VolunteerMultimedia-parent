package com.bao.controller;

import com.bao.service.PublicBenefitActivitiesService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/publicBenefitActivities")
public class PublicBenefitActivitiesController {

    @Resource
    private PublicBenefitActivitiesService publicBenefitActivitiesService;

    /**
     * 查询志愿者网列表
     * @return
     */
    @RequestMapping("/findPublicBenefitActivitiesList")
    public String findPublicBenefitActivitiesList() {
        return publicBenefitActivitiesService.findPbaList();
    }

}
