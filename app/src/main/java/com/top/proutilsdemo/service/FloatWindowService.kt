package com.top.proutilsdemo.service

import android.app.ActivityManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.IBinder
import java.util.*
import android.content.pm.PackageManager
import com.top.proutilsdemo.manager.FloatWindowManager


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
        timer = Timer()
        // 开启定时器，每隔0.5秒刷新一次
        timer.scheduleAtFixedRate(RefreshTask(), 0, 500)

        return super.onStartCommand(intent, flags, startId)
    }

    override fun onDestroy() {
        super.onDestroy()

        timer.cancel()

    }


    override fun onBind(intent: Intent?): IBinder {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.


    }

    internal inner class RefreshTask : TimerTask() {

        override fun run() {
            // 当前界面是桌面，且没有悬浮窗显示，则创建悬浮窗。
            if (isHome() && !FloatWindowManager.isWindowShowing()) {
                mHandler.post(Runnable { FloatWindowManager.createSmallWindow(applicationContext) })
            } else if (!isHome() && FloatWindowManager.isWindowShowing()) {
                mHandler.post(Runnable {
                    FloatWindowManager.removeSmallView(applicationContext)
                    FloatWindowManager.removeBigView(applicationContext)
                })
            } else if (isHome() && FloatWindowManager.isWindowShowing()) {
                mHandler.post(Runnable { FloatWindowManager.updateUsedPercent(applicationContext) })
            }// 当前界面是桌面，且有悬浮窗显示，则更新内存数据。
            // 当前界面不是桌面，且有悬浮窗显示，则移除悬浮窗。
        }

    }


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

        //var names: ArrayList<String>
        val names = ArrayList<String>()

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