package com.top.proutilsdemo.ui

import android.content.Context
import android.view.LayoutInflater
import android.widget.LinearLayout
import com.top.proutilsdemo.R
import com.top.proutilsdemo.manager.FloatWindowManager
import kotlinx.android.synthetic.main.window_float_big.view.*
import com.top.proutilsdemo.service.FloatWindowService
import android.content.Intent
import android.view.View


/**
 * 作者：李阳
 * 时间：2018/5/22
 * 描述：
 */
class FloatWindowBigView : LinearLayout {

    /**
     * 记录大悬浮窗的宽度
     */
    val viewWidth: Int = 0

    /**
     * 记录大悬浮窗的高度
     */
    val viewHeight: Int = 0


    constructor(context: Context?) : super(context) {
        LayoutInflater.from(context).inflate(R.layout.window_float_big, this)
        val width = big_window_layout.layoutParams.width
        val height = big_window_layout.layoutParams.height

        close.setOnClickListener(object : View.OnClickListener {
            override fun onClick(v: View?) {
                // 点击关闭悬浮窗的时候，移除所有悬浮窗，并停止Service
                if (context != null) {
                    FloatWindowManager.removeSmallView(context)
                    FloatWindowManager.removeBigView(context)
                    val intent = Intent(getContext(), FloatWindowService::class.java)
                    context.stopService(intent)
                }
            }
        })

        back.setOnClickListener(object :View.OnClickListener{
            override fun onClick(v: View?) {

                //点击返回的时候，移除大的，创建小的
                if (context != null) {
                    FloatWindowManager.removeBigView(context)
                    FloatWindowManager.createSmallWindow(context)
                }

            }
        })


    }
}