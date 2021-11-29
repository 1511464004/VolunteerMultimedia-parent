package com.bao.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class VCheckIn {
    private Integer id;
    private String name;
    private Integer v_id;
    private String src;
    private String img;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;
    private Integer status;
    private String remark;

    private Volunteer volunteer;
}
