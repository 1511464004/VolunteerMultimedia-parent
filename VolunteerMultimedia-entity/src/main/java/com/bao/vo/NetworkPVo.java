package com.bao.vo;

import com.bao.entity.NetworkPV;
import lombok.Data;

@Data
public class NetworkPVo extends NetworkPV {


    private Integer page;//当前页码
    private Integer limit;//每页显示数量

}
