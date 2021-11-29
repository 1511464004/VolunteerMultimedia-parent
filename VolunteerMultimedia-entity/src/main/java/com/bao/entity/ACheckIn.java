package com.bao.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.lang.ref.PhantomReference;
import java.util.Date;

@Data
public class ACheckIn {
    private Integer id;
    private Integer a_id;
    private Integer v_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;
    private Integer status;
    private String remark;

    private Volunteer volunteer;
    private VActivity vActivity;
}
