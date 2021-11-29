package com.bao.controller;

import com.alibaba.fastjson.JSON;
import com.bao.entity.Log;
import com.bao.service.LogService;
import com.bao.utils.DataGridViewResult;
import com.bao.utils.LogKey;
import com.bao.utils.SystemConstants;
import com.bao.vo.LogVo;
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
@RequestMapping("/admin/log")
public class LogController {

    @Resource
    private LogService logService;



    /**
     * 查询日志列表
     * @param logVo
     * @return
     */
    @RequestMapping("/list")
    public DataGridViewResult list(LogVo logVo) {
        //设置分页信息
        PageHelper.startPage(logVo.getPage(),logVo.getLimit());
        //调用查询日志列表的方法
        List<Log> logList = logService.findLogList(logVo);
        //创建分页对象
        PageInfo<Log> pageInfo = new PageInfo<>(logList);
        //返回数据
        return new DataGridViewResult(pageInfo.getTotal(),pageInfo.getList());
    }

    /**
     * 添加日志
     * @param log
     * @return
     */
    @RequestMapping("/addLog")
    public void addLog(Log log) {
        logService.insert(log);
    }

    /**
     * 删除日志
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteLog")
    public String deleteLog() {
        Map<String,Object> map = new HashMap<>();
        if (logService.delete() > 0) {
            map.put(SystemConstants.SUCCESS,true);
            map.put(SystemConstants.MESSAGE,"清空日志成功");
        } else {
            map.put(SystemConstants.SUCCESS,false);
            map.put(SystemConstants.MESSAGE,"清空日志失败");
        }
        return JSON.toJSONString(map);
    }

}
