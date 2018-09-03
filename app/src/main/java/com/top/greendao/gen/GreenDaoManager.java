package com.top.greendao.gen;


import android.content.Context;

/**
 * 作者：李阳
 * 时间：2018/8/13
 * 描述：
 */
public class GreenDaoManager {

    private static volatile GreenDaoManager mInstance = null;
    public static String DB_NAME = "GreenDao.db";


    public GreenDaoManager(Context context,String DB_NAME) {

        this.DB_NAME=DB_NAME;

    }

    //单例模式
    public static GreenDaoManager getInstance(Context context) {
        if (mInstance == null) {
            synchronized (GreenDaoManager.class) {
                if (mInstance == null) {
                    mInstance = new GreenDaoManager(context,DB_NAME);
                }
            }
        }
        return mInstance;
    }

    //第一次发布app不需要升级数据库正常使用DevOpenHelper获取daosession
    public DaoSession getSession(Context context) {
        DaoMaster.DevOpenHelper helper = new DaoMaster.DevOpenHelper(context, DB_NAME, null);
        DaoMaster daoMaster = new DaoMaster(helper.getWritableDb());
        return daoMaster.newSession();
    }

    //再次app需要升级数据库时 获取daosession
    public DaoSession getUpdateSession(Context context) {
        MyOpenHelper dbHelper = new MyOpenHelper(context, DB_NAME);
        DaoMaster daoMaster = new DaoMaster(dbHelper.getWritableDb());
        return daoMaster.newSession();
    }

}
