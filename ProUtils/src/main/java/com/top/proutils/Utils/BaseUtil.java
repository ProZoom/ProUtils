package com.top.proutils.Utils;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 作者：李阳
 * 时间：2018/4/17
 * 描述：
 */
public class BaseUtil {


    private static final String TAG = "BaseUtil";

    private static long lastClickTime;

    /**
     * 按钮是否快速点击
     *
     * @return
     */
    public synchronized static boolean isFastClick() {
        long time = System.currentTimeMillis();
        if (time - lastClickTime < 500) {
            return true;
        }
        lastClickTime = time;
        return false;
    }

    /**
     * 获取百分比
     * @param num
     * @param all
     * @return
     */
    public static String getPerCent(int num, int all) {
        NumberFormat numberFormat = NumberFormat.getInstance();
        // 设置精确到小数点后2位
        numberFormat.setMaximumFractionDigits(2);
        String result = numberFormat.format((float) num / (float) all * 100);
        System.out.println("num1和num2的百分比为:" + result + "%");
        return result+"%";
    }


    /**
     * app运行adb指令
     * 方法1
     **/
    public static void execShell(String cmd) {
        try {
            //权限设置
            Process p = Runtime.getRuntime().exec("su");
            //获取输出流
            OutputStream outputStream = p.getOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            //将命令写入
            dataOutputStream.writeBytes(cmd);
            //提交命令
            dataOutputStream.flush();
            //关闭流操作
            dataOutputStream.close();
            outputStream.close();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /**
     * app运行adb指令
     * 方法2
     **/
    public static void execCommand(String command) throws IOException {
        Runtime runtime = Runtime.getRuntime();
        Process proc = runtime.exec(command);
        try {
            if (proc.waitFor() != 0) {
                System.err.println("exit value = " + proc.exitValue());
            }
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    proc.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            String line = null;
            while ((line = in.readLine()) != null) {
                stringBuffer.append(line + " ");
            }
            System.out.println(stringBuffer.toString());

        } catch (InterruptedException e) {
            System.err.println(e);
        } finally {
            try {
                proc.destroy();
            } catch (Exception e2) {
                Log.e(TAG, e2.toString());
            }
        }
    }

    /**
     * 禁用某一layout下所有控件
     * @param viewGroup
     * @param enable
     */
    public static void disableSubControls(ViewGroup viewGroup, Boolean enable) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View v = viewGroup.getChildAt(i);
            if (v instanceof ViewGroup) {
                if (v instanceof Spinner) {
                    Spinner spinner = (Spinner) v;
                    spinner.setClickable(enable);
                    spinner.setEnabled(enable);

                    //Log.i(TAG, "A Spinner is unabled");
                } else if (v instanceof ListView) {
                    ((ListView) v).setClickable(enable);
                    ((ListView) v).setEnabled(enable);

                    //Log.i(TAG, "A ListView is unabled");
                } else {
                    disableSubControls((ViewGroup) v, enable);
                }
            } else if (v instanceof EditText) {
                ((EditText) v).setEnabled(enable);
                ((EditText) v).setClickable(enable);

                //Log.i(TAG, "A EditText is unabled");
            } else if (v instanceof Button) {
                ((Button) v).setEnabled(enable);

                // Log.i(TAG, "A Button is unabled");
            }
        }
    }



    public static String div(long num, long all) {
        NumberFormat numberFormat = NumberFormat.getInstance();
        // 设置精确到小数点后2位
        numberFormat.setMaximumFractionDigits(2);
        String result = numberFormat.format((float) num / (float) all * 100);
        //System.out.println("num1和num2的百分比为:" + result + "%");
        return result;
    }


    /**
     * 获取两段时间差
     * @param before
     * @param now
     */
    public static void getTimeDiff(String before, String now) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date date1 = null;
        Date date2 = null;

        try {
            date1 = sdf.parse(before);
            date2 = sdf.parse(now);

        } catch (ParseException e) {
            e.printStackTrace();
        }
        long l = date2.getTime() - date1.getTime();
        long day = l / (24 * 60 * 60 * 1000);
        long hour = (l / (60 * 60 * 1000) - day * 24);
        long min = ((l / (60 * 1000)) - day * 24 * 60 - hour * 60);
        long s = (l / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
        System.out.println(day + "天" + hour + "小时" + min + "分" + s + "秒");

    }

    /**
     * 将数字格式化为金钱符号
     * @param number
     * @param locale
     * @return
     */
    public static String  getMoneyNumber(double number,Locale locale) {

        //NumberFormat format = NumberFormat.getCurrencyInstance(Locale.CHINA);
        NumberFormat format = NumberFormat.getCurrencyInstance(locale);
        System.out.println("Locale.CHINA: " + format.format(number));
        format = NumberFormat.getCurrencyInstance(Locale.US);
        System.out.println("Locale.US: " + format.format(number));

        return format.format(number);
    }

}
