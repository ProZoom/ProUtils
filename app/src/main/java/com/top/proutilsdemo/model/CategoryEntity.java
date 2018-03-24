package com.top.proutilsdemo.model;

import java.util.List;

/**
 * 作者：ProZoom
 * 时间：2018/3/15
 * 描述：
 */
public class CategoryEntity {

    private String Category;

    List<Info> infos;

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public List<Info> getInfos() {
        return infos;
    }

    public void setInfos(List<Info> infos) {
        this.infos = infos;
    }
}
