package com.bao.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class VActivity {
    private Integer id;
    private String name;
    private String img;
    private Integer target;
    private Integer job;
    private Integer plan;
    private Integer number;
    private Integer day;
    private String href;
    private String map;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
}
