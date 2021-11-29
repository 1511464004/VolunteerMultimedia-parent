package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.VCheckIn;
import com.bao.entity.VCheckIn;
import com.bao.service.VCheckInService;
import com.bao.service.VolunteerNetworkService;
import com.bao.utils.SystemConstants;
import com.bao.utils.UUIDUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.annotation.Resources;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/volunteerNetwork")
public class VolunteerNetworkController {

    @Resource
    private VolunteerNetworkService volunteerNetworkService;
    
    @Resource
    private VCheckInService vCheckInService;

    /**
     * 查询志愿者网列表
     * @return
     */
    @RequestMapping("/findVolunteerNetworkList")
    public String findVolunteerNetworkList() {
        return volunteerNetworkService.findVNetworkList();
    }

    @RequestMapping("/uploadFilePhoto")
    public String UploadPhoto(MultipartFile attach){
        //创建Map集合保存数据（响应到前台页面的数据）
        Map<String,Object> map = new HashMap<>();
        //判断是否有选中文件
        if (!attach.isEmpty()) {
            //获取文件上传地址
            String path = "D:/ADAI/boottest/VolunteerMultimedia-parent/VolunteerMultimedia-web/src/main/webapp/statics/upload/images";
            //获取源文件名称
            String oldName = attach.getOriginalFilename();
            //获取文件后缀名
//            String extension = FilenameUtils.getExtension(oldName);
            //重命名文件名称
//            String newFileName = UUIDUtils.randomUUID()+"."+extension;
            //为了解决同一个文件下文件过多的问题，使用日期作为文件夹管理
//            String datePath = new SimpleDateFormat("yyyyMMdd").format(new Date());
            //组装最终的文件名
//            String finalName = datePath + "/" + newFileName;
//            String finalName = oldName + "." + extension;
            String finalName = oldName;
            //创建文件对象
            File destFile = new File(path,finalName);
            //判断文件夹是否存在，文件夹不存在则创建该文件夹
            if (!destFile.getParentFile().exists()) {
                destFile.getParentFile().mkdirs();
            }
            try {
                //将文件保存到硬盘
                attach.transferTo(destFile);
                //保存响应的数据
                map.put("code",0);
                map.put("msg","");
                Map<String,Object> dataMap = new HashMap<>();
                dataMap.put("src","/images/"+finalName);//文件上传成功的回显地址
                map.put("data",dataMap);
                map.put("imagePath",finalName);//图片名称，目的是给photo隐藏域值
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return JSON.toJSONString(map);
    }

    @RequestMapping("/uploadFileVideo")
    public String UploadVideo(MultipartFile attach){
        //创建Map集合保存数据（响应到前台页面的数据）
        Map<String,Object> map = new HashMap<>();
        //判断是否有选中文件
        if (!attach.isEmpty()) {
            //获取文件上传地址
            String path = "D:/ADAI/boottest/VolunteerMultimedia-parent/VolunteerMultimedia-web/src/main/webapp/statics/upload/video";
            //获取源文件名称
            String oldName = attach.getOriginalFilename();
            //获取文件后缀名
//            String extension = FilenameUtils.getExtension(oldName);
            //重命名文件名称
//            String newFileName = UUIDUtils.randomUUID()+"."+extension;
            //为了解决同一个文件下文件过多的问题，使用日期作为文件夹管理
//            String datePath = new SimpleDateFormat("yyyyMMdd").format(new Date());
            //组装最终的文件名
//            String finalName = datePath + "/" + newFileName;
//            String finalName = oldName + "." + extension;
            String finalName = oldName;
            //创建文件对象
            File destFile = new File(path,finalName);
            //判断文件夹是否存在，文件夹不存在则创建该文件夹
            if (!destFile.getParentFile().exists()) {
                destFile.getParentFile().mkdirs();
            }
            try {
                //将文件保存到硬盘
                attach.transferTo(destFile);
                //保存响应的数据
                map.put("code",0);
                map.put("msg","");
                Map<String,Object> dataMap = new HashMap<>();
                dataMap.put("src","/video/"+finalName);//文件上传成功的回显地址
                map.put("data",dataMap);
                map.put("videoPath",finalName);//视频名称，目的是给视频隐藏域值
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return JSON.toJSONString(map);
    }

    /**
     * 上传视频
     * @return
     */
    @ResponseBody
    @RequestMapping("/addVCheckIn")
    public String addOrders(VCheckIn vCheckIn){
        Map<String,Object> map = new HashMap<>();
        VCheckIn vCheckIn1 = vCheckInService.getVCheckInByNameId(vCheckIn.getName(),vCheckIn.getV_id());
        if (vCheckIn1 != null) {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"上传失败,你已经上传，无需重复操作");
            return JSON.toJSONString(map);
        }
        vCheckIn.setStatus(1);
        vCheckIn.setCreateDate(new Date());
        if(vCheckInService.addVCheckIn(vCheckIn) > 0){
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,"上传成功");
        }else{
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"上传失败");
        }
        return JSON.toJSONString(map);
    }
}
