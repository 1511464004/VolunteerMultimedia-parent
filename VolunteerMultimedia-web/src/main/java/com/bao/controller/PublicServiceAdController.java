package com.bao.controller;

import com.bao.service.PublicServiceAdService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/publicServiceAd")
public class PublicServiceAdController {

    @Resource
    private PublicServiceAdService publicServiceAdService;

    /**
     * 查询公益广告列表
     * @return
     */
    @RequestMapping("/findPublicServiceAdList")
    public String findPublicServiceAdList() {
        return publicServiceAdService.findPadList();
    }

}
