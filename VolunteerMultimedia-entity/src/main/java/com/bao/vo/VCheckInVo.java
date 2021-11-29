package com.bao.vo;

import com.bao.entity.VCheckIn;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class VCheckInVo extends VCheckIn {
    private Integer page;//当前页码
    private Integer limit;//每页显示数量
    private String name;
    private String loginName;


    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endDate;
}
