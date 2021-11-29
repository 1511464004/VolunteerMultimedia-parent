package com.bao.entity;

import lombok.Data;

@Data
public class Permission {
    private Integer id;
    private Integer pid;//父菜单id
    private String type;//菜单类型
    private String title;//菜单名称
    private String permissionCode;
    private String icon;//菜单图标
    private String href;//菜单接口
    private Integer spread;//是否展开 1-展开  2-折叠
    private String target;//打开方式

}
