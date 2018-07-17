package com.top.proutilsdemo.view.activity

import android.os.Bundle
import com.top.proutils.base.SerialPortActivity
import com.top.proutilsdemo.R

/**
 * 作者：李阳
 * 时间：2018/7/17
 * 描述：
 */
class SerialPortDemoActivity: SerialPortActivity(){


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_serialport)
    }










    override fun onDataReceived(buffer: ByteArray?, size: Int) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}