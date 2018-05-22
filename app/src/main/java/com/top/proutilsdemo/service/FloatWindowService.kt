package com.top.proutilsdemo.service

import android.app.ActivityManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.IBinder
import java.util.*
import kotlin.collections.ArrayList
import android.content.pm.PackageManager


/**
 * 作者：李阳
 * 时间：2018/5/21
 * 描述：
 */
class FloatWindowService : Service() {


    /**
     * 在线程中创建悬浮窗或移除悬浮窗
     */
    private lateinit var mHandler: Handler

    /**
     * 定时监测当前应该是创建还是删除
     */
    private lateinit var timer: Timer


    override fun onCreate() {
        super.onCreate()




    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {

        // 开启定时器，每隔0.5秒刷新一次
        // timer.scheduleAtFixedRate()



        return super.onStartCommand(intent, flags, startId)
    }

    override fun onDestroy() {
        super.onDestroy()



    }


    override fun onBind(intent: Intent?): IBinder {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.




    }




/*    fun RefreshTask():TimerTask{

        kotlin.run {
            // 当前界面是桌面，且没有悬浮窗显示，则创建悬浮窗。
            if (isHome()&&!)
        }

    }*/



    /**
     * 判断当前界面是否属于Home
     */

    fun isHome(): Boolean {

        //val activityManager=getSystemService(Context.ACTIVITY_SERVICE)

        val mActivityManager = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager

        val runningTasks = mActivityManager.getRunningTasks(1)


        return getHome().contains(runningTasks[0].topActivity.packageName)
    }

    /**
     * 获得属于桌面的应用程序包名称
     *
     * 返回包含所有应用的字符串列表
     */
    fun getHome(): List<String> {

        lateinit var names: ArrayList<String>

        val packagesManager = this.packageManager
        //val packageManager = this.packageManager
        val intent = Intent(Intent.ACTION_MAIN)
        intent.addCategory(Intent.CATEGORY_HOME)
        val resolveInfo = packagesManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY)

        for (rI in resolveInfo) {
            names.add(rI.activityInfo.packageName)
        }
        return names
    }


}