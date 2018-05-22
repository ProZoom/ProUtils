package com.top.proutilsdemo.manager

import android.app.ActivityManager
import android.content.Context
import android.graphics.PixelFormat
import android.view.Gravity
import android.view.WindowManager
import android.widget.LinearLayout
import com.top.proutilsdemo.ui.FloatWindowSmallView
import kotlinx.android.synthetic.main.window_float_small.view.*
import android.widget.TextView
import com.top.proutilsdemo.R
import java.io.BufferedReader
import java.io.FileReader


/**
 * 作者：李阳
 * 时间：2018/5/21
 * 描述：
 */
class FloatWindowManager {


    /**
     * 小悬浮窗view实例
     */
    lateinit var smallView: FloatWindowSmallView

    /**
     * 大悬浮窗view实例
     */
    lateinit var bigView: FloatWindowSmallView


    /**
     * 小悬浮窗view参数实例
     */
    lateinit var smallWindowParams: WindowManager.LayoutParams

    /**
     * 大悬浮窗view参数实例
     */
    lateinit var bigWindowParams: WindowManager.LayoutParams

    /**
     * 用于控制屏幕上添加和删除悬浮窗
     */

    lateinit var mWindowManager: WindowManager

    /**
     * 获取内存信息
     */
    lateinit var mActivityManager: ActivityManager


    /**
     * 创建一个小悬浮窗。初始位置为屏幕的右部中间位置。
     */
    fun createSmallWindow(context: Context) {

        val windowManager = getWindowManager(context)
        var screenWidth = windowManager.defaultDisplay.width
        var screenHeight = windowManager.defaultDisplay.height



        smallView = FloatWindowSmallView(context)


        smallWindowParams = WindowManager.LayoutParams()
        smallWindowParams.type = WindowManager.LayoutParams.TYPE_PHONE
        smallWindowParams.format = PixelFormat.RGBA_8888
        smallWindowParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        smallWindowParams.gravity = Gravity.LEFT or Gravity.TOP
        smallWindowParams.width = smallView.viewWidth
        smallWindowParams.height = smallView.viewHeight
        smallWindowParams.x = screenWidth
        smallWindowParams.y = screenHeight / 2

        smallView.mParam = smallWindowParams

        windowManager.addView(smallView, smallWindowParams)

    }

    /**
     * 将小悬浮窗从屏幕移除
     */
    fun removeSmallView(context: Context) {
        val windowManager = getWindowManager(context)
        windowManager.removeView(smallView)
    }


    /**
     *  创建一个小悬浮窗。初始位置为屏幕的中间位置。
     */
    fun createBigWindow(context: Context) {
        val windowManager = getWindowManager(context)
        var screenWidth = windowManager.defaultDisplay.width
        var screenHeight = windowManager.defaultDisplay.height

        bigView = FloatWindowSmallView(context)


        bigWindowParams = WindowManager.LayoutParams()
        bigWindowParams.type = WindowManager.LayoutParams.TYPE_PHONE
        bigWindowParams.format = PixelFormat.RGBA_8888
        bigWindowParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        bigWindowParams.gravity = Gravity.LEFT or Gravity.TOP
        bigWindowParams.width = bigView.viewWidth
        bigWindowParams.height = bigView.viewHeight
        bigWindowParams.x = screenWidth / 2 - bigView.viewWidth / 2
        bigWindowParams.y = screenHeight / 2 - bigView.viewHeight / 2

        bigView.mParam = smallWindowParams

        windowManager.addView(bigView, bigWindowParams)
    }

       /**
     * 将大悬浮窗从屏幕移除
     */
    fun removeBigView(context: Context) {
        val windowManager = getWindowManager(context)
        windowManager.removeView(bigView)
    }


    private fun getWindowManager(context: Context): WindowManager {

        if (mWindowManager == null) {
            mWindowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        }

        return mWindowManager
    }


    /**
     * 如果ActivityManager还未创建，则创建一个新的ActivityManager返回。否则返回当前已创建的ActivityManager。
     *
     * @param context
     * 可传入应用程序上下文。
     * @return ActivityManager的实例，用于获取手机可用内存。
     */
    private fun getActivityManager(context: Context): ActivityManager {
        mActivityManager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        return mActivityManager
    }


    /**
     * 更新小悬浮窗的TextView上的数据，显示内存使用的百分比。
     *
     * @param context
     * 可传入应用程序上下文。
     */
    fun updateUsedPercent(context: Context) {
        smallView.percent.text=getUsedPercentValue(context)
    }

    private fun getUsedPercentValue(context: Context): String {
        val dir="/proc/meminfo"
        val fileReader = FileReader(dir)
        val bufferReader=BufferedReader(fileReader,2048)

        val memoryLine=bufferReader.readLine()

        val subMemoryLine = memoryLine.substring(memoryLine.indexOf("MemTotal:"))
        bufferReader.close()
        val totalMemorySize=Integer.parseInt(subMemoryLine.replace("\\D+",""))
        val availableSize=getAvailableMemory(context)/1024

        val percent=(totalMemorySize-availableSize)/totalMemorySize*100

        return percent.toString()+"%"

    }

    private fun getAvailableMemory(context: Context): Long {
        val mi=ActivityManager.MemoryInfo()
        getActivityManager(context).getMemoryInfo(mi)

        return mi.availMem

    }

}