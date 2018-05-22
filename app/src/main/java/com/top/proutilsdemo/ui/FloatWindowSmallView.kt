package com.top.proutilsdemo.ui

import android.content.Context
import android.graphics.Canvas
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.WindowManager
import android.widget.LinearLayout
import com.top.proutilsdemo.R
import kotlinx.android.synthetic.main.window_float_small.view.*

/**
 * 作者：李阳
 * 时间：2018/5/21
 * 描述：
 */
class FloatWindowSmallView : LinearLayout {


    /**
     * 记录小悬浮窗的宽度
     */
    var viewWidth: Int = 0

    /**
     * 记录小悬浮窗的高度
     */

    var viewHeight: Int = 0

    /**
     * 记录系统状态栏的高度
     */

    var statusBarHeight: Int = 0

    /**
     * 用于更新小悬浮窗的位置
     */
    lateinit var windowManager: WindowManager

    /**
     * 小悬浮窗参数
     */

    lateinit var mParam: WindowManager.LayoutParams

    /**
     * 记录当前手指位置在屏幕的横坐标
     */

    var xInScreen: Float = 0.0f

    /**
     * 记录当前手指位置在屏幕的纵坐标
     */

    var yInScreen: Float = 0.0f

    /**
     * 记录手指按下时在屏幕的横坐标
     */

    var xDownInScreen: Float = 0.0f

    /**
     * 记录手指按下时在屏幕的横坐标
     */

    var yDownInScreen: Float = 0.0f

    /**
     * 记录手指按下时在小悬浮窗的View上的横坐标的值
     */

    var xInView: Float = 0.0f

    /**
     * 记录手指按下时在小悬浮窗的view上的纵坐标的值
     */
    var yInview: Float = 0.0f


    constructor(context: Context) : super(context) {
        windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

        LayoutInflater.from(context).inflate(R.layout.window_float_small, this)

        viewWidth = small_window_layout.layoutParams.width
        viewHeight = small_window_layout.layoutParams.height

        percent.text = "SSSS"

    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs)

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr)

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int, defStyleRes: Int) : super(context, attrs, defStyleAttr, defStyleRes)


    override fun onDraw(canvas: Canvas?) {
        super.onDraw(canvas)


    }


    override fun onTouchEvent(event: MotionEvent): Boolean {


        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                // 手指按下时记录必要数据,纵坐标的值都需要减去状态栏高度
                xDownInScreen=event.rawX
                yDownInScreen=event.rawY-getStatusBarHeight2()
                xInScreen=event.rawX
                yInScreen=event.rawY-getStatusBarHeight2()
                xInView=event.x
                xInView=event.y
            }
            MotionEvent.ACTION_UP -> {

            }
            MotionEvent.ACTION_MOVE -> {

            }
        }

        return super.onTouchEvent(event)
    }


    /**
     * 获取状态栏高度
     */
    fun getStatusBarHeight2():Int{

        if (statusBarHeight==0){
            val c = Class.forName("com.android.internal.R\$dimen")
            val o = c.newInstance()
            val field = c.getField("status_bar_height")
            val x = field.get(o) as Int
            statusBarHeight = resources.getDimensionPixelSize(x)
        }
        return statusBarHeight
    }


}

