package com.bao.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class Log {
    private String str1;
    private String str2;
    private String str3;
    private String str4;
    private String log;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    public Log() {

    }

    public Log(String str1, String str2, String str3, String str4) {
        this.str1 = str1;
        this.str2 = str2;
        this.str3 = str3;
        this.str4 = str4;
        this.log = str1 + str2 + str3 + str4;
        this.createDate = new Date();
    }

    public Log(String str1, String str2, String str3) {
        this.str1 = str1;
        this.str2 = str2;
        this.str3 = str3;
        this.log = str1 + str2 + str3;
        this.createDate = new Date();
    }
}
