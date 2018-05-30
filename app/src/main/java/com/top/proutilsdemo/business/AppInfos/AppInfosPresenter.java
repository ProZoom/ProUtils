package com.top.proutilsdemo.business.AppInfos;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import java.util.ArrayList;
import java.util.List;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：
 */
public class AppInfosPresenter implements AppInfosContract.Presenter {

    public static final int DEFAULT = 0; // 默认 所有应用
    public static final int SYSTEM_APP = DEFAULT + 1; // 系统应用
    public static final int NONSYSTEM_APP = DEFAULT + 2; // 非系统应用

    @Override
    public void start() {

    }

    @Override
    public void onPost() {

    }


    @Override
    public String getProgramNameByPackageName(Context context, String packageName) {

        PackageManager pm = context.getPackageManager();
        String name = null;
        try {
            name = pm.getApplicationLabel(pm.getApplicationInfo(packageName, PackageManager.GET_META_DATA)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return name;
    }


    @Override
    public void getAllProgramInfo(Context context, List<AppInfosBean> allApplist) {

        getAllProgramInfo(allApplist, context, DEFAULT);

    }


    /**
     * 获取手机所有应用信息
     * @param applist
     * @param context
     * @param type    标识符 是否区分系统和非系统应用
     */

    @Override
    public  void getAllProgramInfo(List<AppInfosBean> applist, Context context, int type) {

        ArrayList<AppInfosBean> appList = new ArrayList<AppInfosBean>(); // 用来存储获取的应用信息数据
        List<PackageInfo> packages = context.getPackageManager()
                .getInstalledPackages(0);

        for (int i = 0; i < packages.size(); i++) {
            PackageInfo packageInfo = packages.get(i);
            AppInfosBean tmpInfo = new AppInfosBean();
            tmpInfo.appName = packageInfo.applicationInfo.loadLabel(
                    context.getPackageManager()).toString();
            tmpInfo.packageName = packageInfo.packageName;
            tmpInfo.versionName = packageInfo.versionName;
            tmpInfo.versionCode = packageInfo.versionCode;
            tmpInfo.appIcon = packageInfo.applicationInfo.loadIcon(context.getPackageManager());

            switch (type) {
                case NONSYSTEM_APP:
                    if (!isSystemAPP(packageInfo)) {
                        applist.add(tmpInfo);
                    }
                    break;
                case SYSTEM_APP:
                    if (isSystemAPP(packageInfo)) {
                        applist.add(tmpInfo);
                    }
                    break;
                default:
                    applist.add(tmpInfo);
                    break;
            }

        }
    }


    /**
     * 获取所有系统应用信息
     * @param context
     * @return
     */

    @Override
    public  List<AppInfosBean> getAllSystemProgramInfo(Context context) {
        List<AppInfosBean> systemAppList = new ArrayList<AppInfosBean>();
        getAllProgramInfo(systemAppList, context, SYSTEM_APP);
        return systemAppList;
    }

    /**
     * 获取所有非系统应用信息
     * @param context
     * @return
     */

    @Override
    public  List<AppInfosBean> getAllNonsystemProgramInfo(Context context) {
        List<AppInfosBean> nonsystemAppList = new ArrayList<AppInfosBean>();
        getAllProgramInfo(nonsystemAppList, context, NONSYSTEM_APP);
        return nonsystemAppList;
    }

    /**
     * 判断是否是系统应用
     * @param packageInfo
     * @return
     */
    public static Boolean isSystemAPP(PackageInfo packageInfo) {
        if ((packageInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) == 0) { // 非系统应用
            return false;
        } else { // 系统应用
            return true;
        }
    }


}
