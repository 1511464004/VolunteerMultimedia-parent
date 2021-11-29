package com.bao.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

@Data
public class Volunteer {
    private Long id;
    private String loginName;
    private String password;
    private String realName;
    private Integer sex;
    private String idCard;
    private String phone;
    private String email;
    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date registTime;
    //角色列表
//    private List<AccountRole> roleList;

    @Override
    public boolean equals(Object o) {
        if(o instanceof Volunteer){
            Volunteer volunteer = (Volunteer) o;
            return this.loginName.equalsIgnoreCase(volunteer.getLoginName()) &&
                    this.realName.equalsIgnoreCase(volunteer.getRealName()) &&
                    this.sex == volunteer.getSex() &&
                    this.phone.equalsIgnoreCase(volunteer.getPhone()) &&
                    this.email.equalsIgnoreCase(volunteer.getEmail());
        }
        return false;
    }
}
