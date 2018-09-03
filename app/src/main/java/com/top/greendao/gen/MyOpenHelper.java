package com.top.greendao.gen;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import org.greenrobot.greendao.database.Database;

/**
 * 作者：李阳
 * 时间：2018/8/13
 * 描述：
 */
public class MyOpenHelper extends DaoMaster.OpenHelper {

    public MyOpenHelper(Context context, String name) {
        super(context, name);
    }
    public MyOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory) {
        super(context, name, factory);
    }
    //当build.gradle中配置版本号提升时，会执行下面方法
    @Override
    public void onUpgrade(Database db, int oldVersion, int newVersion) {
        super.onUpgrade(db, oldVersion, newVersion);
        StudentDao.createTable(db,true);
        db.execSQL("ALTER TABLE DOCTOR ADD grade INTEGER");
    }

}
