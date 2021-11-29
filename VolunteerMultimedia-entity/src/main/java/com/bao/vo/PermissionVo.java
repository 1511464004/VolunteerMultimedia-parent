package com.bao.vo;

import com.bao.entity.Permission;
import lombok.Data;

@Data
public class PermissionVo extends Permission {

    private Integer page;//当前页码
    private Integer limit;//每页显示数量
}
