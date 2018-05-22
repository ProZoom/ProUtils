package com.top.proutilsdemo.constants;

import com.top.proutilsdemo.R;

/**
 * 作者：ProZoom
 * 时间：2018/3/15
 * 描述：
 */
public class constants {


    public static final String[] CATES = new String[]{
            "硬件信息", "设置类", "工具库"
    };

    //硬件信息
    public static final String[] INFOS = new String[]{
            "系统信息",
            "硬件信息",
            "网络信息",
            "蓝牙信息",
            "SIM信息",
            "CPU信息",
            "内存储信息",
            "指纹信息",
            "应用列表信息"
    };

    public static final int[] INFOIDS = new int[]{
            R.drawable.ic_android,
            R.drawable.ic_mobile,
            R.drawable.ic_wifi,
            R.drawable.ic_bluetooth,
            R.drawable.ic_sim,
            R.drawable.ic_cpu,
            R.drawable.ic_sd,
            R.drawable.ic_fingure,
            R.drawable.ic_apk
    };

    //设置类
    public static final String[] SETTINGS = new String[]{
            "系统设置",
            "语言设置",
            "USB调试",
            "开发者选项"
    };

    public static final int[] SETTINGIDS = new int[]{
            R.drawable.ic_setting,
            R.drawable.ic_language,
            R.drawable.ic_usb,
            R.drawable.ic_application
    };


    //常用工具类
    public static final String[] TOOLS = new String[]{
            "扫一扫",
            "截屏"
            /*"日志相关",
            "正则表达式",
            "时间相关",
            "字符串相关",
            "单位相关",
            "转换相关",
            "UI相关"*/
    };

    public static final int[] TOOLIDS = new int[]{
            R.drawable.ic_scan,
            R.drawable.ic_sceenshot

    };
}
