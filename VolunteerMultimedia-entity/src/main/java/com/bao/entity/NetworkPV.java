package com.bao.entity;

import lombok.Data;

@Data
public class NetworkPV {

    private Integer id;
    private String name;
    private String src;
    private String img;

    public NetworkPV() {

    }

    public NetworkPV(String name, String src, String img) {
        this.name = name;
        this.src = src;
        this.img = img;
    }
}
