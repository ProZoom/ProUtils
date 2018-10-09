package com.top.proutils.tool;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.ByteBuffer;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class DataTool {

    private  final String TAG = "DataTool";
    private static volatile DataTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


    public DataTool() {

    }

    //单例模式，懒汉氏
    public static DataTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new DataTool();
                }
            }
        }
        return instance;
    }

    /////Sp
    public  void spPutString(Context context, String fileName, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);
        sharedPreferences.edit().putString(key, value).apply();//提交数据
    }

    public  String spGetString(Context context, String fileName, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);

        return sharedPreferences.getString(key, value);
    }

    public  void spPutBoolean(Context context, String fileName, String key, boolean value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);
        sharedPreferences.edit().putBoolean(key, value).apply();//提交数据
    }

    public  boolean spGetBoolean(Context context, String fileName, String key, boolean value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);

        return sharedPreferences.getBoolean(key, value);
    }


    /*
    * 描述：缓存数据
    * @param [obj, path]
    * @return void
    */
    public  void cacheSave(Object obj, String path) {
        try {
            File f = new File(path);
            FileOutputStream fos = new FileOutputStream(f);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(obj);
            oos.flush();
            oos.close();
        } catch (IOException e) {
            Log.i(TAG, "save: " + e.toString());
        }
    }

    /*
    * 描述：读取缓存的数据
    * @param [path]
    * @return java.lang.Object
    */
    public  Object cacheLoad(String path) {
        Object obj = null;
        File file = new File(path);
        try {
            if (file.exists()) {
                FileInputStream fis = new FileInputStream(file);
                ObjectInputStream ois = new ObjectInputStream(fis);
                try {
                    obj = ois.readObject();
                } catch (ClassNotFoundException e) {
                }
                ois.close();
            }
        } catch (IOException e) {
            Log.i(TAG, "save: " + e.toString());
        }
        return obj;
    }

    private char[] getChar(int position) {
        String str = String.valueOf(position);
        if (str.length() == 1) {
            str = "0" + str;
        }
        char[] c = {str.charAt(0), str.charAt(1)};
        return c;
    }

    /**
     * 16进制字符串转换成数组
     *
     * @param hex
     * @return
     */
    public  byte[] hexStringTobyte(String hex) {
        if (TextUtils.isEmpty(hex)) {
            return null;
        }
        hex = hex.toUpperCase();
        int len = hex.length() / 2;
        byte[] result = new byte[len];
        char[] achar = hex.toCharArray();
        String temp = "";
        for (int i = 0; i < len; i++) {
            int pos = i * 2;
            result[i] = (byte) (toByte(achar[pos]) << 4 | toByte(achar[pos + 1]));
            temp += result[i] + ",";
        }
        // uiHandler.obtainMessage(206, hex + "=read=" + new String(result))
        // .sendToTarget();
        return result;
    }

    public  int toByte(char c) {
        byte b = (byte) "0123456789ABCDEF".indexOf(c);
        return b;
    }

    /**
     * 数组转成16进制字符串
     *
     * @param b
     * @return
     */
    public  String toHexString(byte[] b) {
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < b.length; i++) {
            buffer.append(toHexString1(b[i]));
        }
        return buffer.toString();
    }

    public  String toHexString1(byte b) {
        String s = Integer.toHexString(b & 0xFF);
        if (s.length() == 1) {
            return "0" + s;
        } else {
            return s;
        }
    }

    /**
     * 十六进制字符串转换成字符串
     */
    public  String hexStr2Str(String hexStr) {
        String str = "0123456789ABCDEF";
        char[] hexs = hexStr.toCharArray();
        byte[] bytes = new byte[hexStr.length() / 2];
        int n;
        for (int i = 0; i < bytes.length; i++) {
            n = str.indexOf(hexs[2 * i]) * 16;
            n += str.indexOf(hexs[2 * i + 1]);
            bytes[i] = (byte) (n & 0xff);
        }
        return new String(bytes);
    }

    /**
     * 字符串转换成十六进制字符串
     */
    public  String str2Hexstr(String str) {
        char[] chars = "0123456789ABCDEF".toCharArray();
        StringBuilder sb = new StringBuilder("");
        byte[] bs = str.getBytes();
        int bit;
        for (int i = 0; i < bs.length; i++) {
            bit = (bs[i] & 0x0f0) >> 4;
            sb.append(chars[bit]);
            bit = bs[i] & 0x0f;
            sb.append(chars[bit]);
        }
        return sb.toString();
    }

    /**
     * byte转换成十六进制字符串
     */
    public  String byte2Hexstr(byte b) {
        String temp = Integer.toHexString(0xFF & b);
        if (temp.length() < 2) {
            temp = "0" + temp;
        }
        temp = temp.toUpperCase();
        return temp;
    }

    /**
     * 字符串转十六进制
     *
     * @param str
     * @param size
     * @return
     */
    public  String str2Hexstr(String str, int size) {
        byte[] byteStr = str.getBytes();
        byte[] temp = new byte[size];
        System.arraycopy(byteStr, 0, temp, 0, byteStr.length);
        temp[size - 1] = (byte) byteStr.length;
        String hexStr = toHexString(temp);
        return hexStr;
    }

    public  byte[] str2HexByte(String str, int size) {
        byte[] byteStr = str.getBytes();
        byte[] temp = new byte[size];
        System.arraycopy(byteStr, 0, temp, 0, byteStr.length);
        return temp;
    }

    /**
     * 16进制字符串分割成若干块，每块32个16进制字符，即16字节
     *
     * @param str
     * @return
     */
    public  String[] hexStr2StrArray(String str) {
        // 32个十六进制字符串表示16字节
        int len = 32;
        int size = str.length() % len == 0 ? str.length() / len : str.length() / len + 1;
        String[] strs = new String[size];
        for (int i = 0; i < size; i++) {
            if (i == size - 1) {
                String temp = str.substring(i * len);
                for (int j = 0; j < len - temp.length(); j++) {
                    temp = temp + "0";
                }
                strs[i] = temp;
            } else {
                strs[i] = str.substring(i * len, (i + 1) * len);
            }
        }
        return strs;
    }

    /**
     * 把16进制字符串压缩成字节数组，在把字节数组转换成16进制字符串
     *
     * @param data
     * @return
     * @throws IOException
     */
    public  byte[] compress(byte[] data) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        GZIPOutputStream gzip = new GZIPOutputStream(out);
        gzip.write(data);
        gzip.close();
        return out.toByteArray();
    }

    /**
     * 把16进制字符串解压缩压缩成字节数组，在把字节数组转换成16进制字符串
     *
     * @param data
     * @return
     * @throws IOException
     */
    public  byte[] uncompress(byte[] data) throws IOException {

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        ByteArrayInputStream in = new ByteArrayInputStream(data);
        GZIPInputStream gunzip = new GZIPInputStream(in);
        byte[] buffer = new byte[256];
        int n;
        while ((n = gunzip.read(buffer)) >= 0) {
            out.write(buffer, 0, n);
        }
        return out.toByteArray();
    }

    public  byte[] short2byte(short s) {
        byte[] size = new byte[2];
        size[0] = (byte) (s >>> 8);
        short temp = (short) (s << 8);
        size[1] = (byte) (temp >>> 8);

        // size[0] = (byte) ((s >> 8) & 0xff);
        // size[1] = (byte) (s & 0x00ff);
        return size;
    }

    public  short[] hexStr2short(String hexStr) {
        byte[] data = hexStringTobyte(hexStr);
        short[] size = new short[4];
        for (int i = 0; i < size.length; i++) {
            size[i] = getShort(data[i * 2], data[i * 2 + 1]);
        }
        return size;
    }

    // 字符序列转换为16进制字符串
    public  String bytesToHexString(byte[] src) {
        StringBuilder stringBuilder = new StringBuilder();
        if (src == null || src.length <= 0) {
            return null;
        }
        char[] buffer = new char[2];
        for (int i = 0; i < src.length; i++) {
            buffer[0] = Character.forDigit((src[i] >>> 4) & 0x0F, 16);
            buffer[1] = Character.forDigit(src[i] & 0x0F, 16);
            // System.out.println(buffer);
            stringBuilder.append(buffer);
        }
        return stringBuilder.toString();
    }

    public  byte[] getSelectCommand(byte[] aid) {
        final ByteBuffer cmd_pse = ByteBuffer.allocate(aid.length + 6);
        cmd_pse.put((byte) 0x00) // CLA Class
                .put((byte) 0xA4) // INS Instruction
                .put((byte) 0x04) // P1 Parameter 1
                .put((byte) 0x00) // P2 Parameter 2
                .put((byte) aid.length) // Lc
                .put(aid).put((byte) 0x00); // Le
        return cmd_pse.array();
    }

    public  short getShort(byte b1, byte b2) {
        short temp = 0;
        temp |= (b1 & 0xff);
        temp <<= 8;
        temp |= (b2 & 0xff);
        return temp;
    }

    public  int getInt(byte[] data) {
        int temp = 0;
        if (data == null) {
            return 0;
        }
        int length = data.length;
        for (int i = 0; i < length; i++) {
            temp |= (data[i] & 0xff);
            if (i != length - 1) {
                temp <<= 8;
            }
        }
        return temp;
    }

    /**
     * int to a byte array of 2 length.
     *
     * @param len data of int type
     * @return byte array of 2 length.
     */
    public  byte[] int2Byte(int len) {
        byte[] data = new byte[2];
        data[1] = (byte) (len >> 8);
        data[0] = (byte) (len >> 0);
        return data;
    }

    /**
     * 异或校验
     *
     * @param data
     * @return
     */
    public  byte xorCheck(byte[] data) {
        byte s = 0;
        for (int i = 0; i < data.length; i++) {
            s = (byte) (s ^ data[i]);
        }
        return s;
    }

    /**
     * int to a byte array of 2 length.
     *
     * @param len data of int type
     * @return byte array of 2 length.
     */
    public  byte[] int2Byte2(int len) {
        byte[] data = new byte[2];
        data[0] = (byte) (len >> 8);
        data[1] = (byte) (len >> 0);
        return data;
    }

    /**
     * Get low byte from byte
     *
     * @param buffer,
     * @return byte low.
     */
    public  byte splitByte(byte buffer) {
        byte low = (byte) (buffer & 0x0f);
        return low;
    }

    public  byte splitByte2(byte buffer) {
        byte new1 = (byte) (buffer | 0x30);
        return new1;
    }
}
