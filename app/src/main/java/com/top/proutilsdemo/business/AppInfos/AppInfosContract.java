package com.top.proutilsdemo.business.AppInfos;

import android.content.Context;

import com.top.proutilsdemo.business.base.BasePresenter;
import com.top.proutilsdemo.business.base.BaseView;

import java.util.List;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：
 */
public interface AppInfosContract {

    interface View extends BaseView{

    }


    interface Presenter extends BasePresenter{
        void onPost();

        String getProgramNameByPackageName(Context context, String packageName);// 根据包名获取应用信息

        void getAllProgramInfo(Context context,List<AppInfosBean> allApplist);// 获取手机所有应用信息

        void getAllProgramInfo(List<AppInfosBean> applist, Context context, int type);// 获取手机应用信息

        List<AppInfosBean> getAllSystemProgramInfo(Context context);//获取系统应用信息

        List<AppInfosBean> getAllNonsystemProgramInfo(Context context);//获取非系统应用信息

    }
}
