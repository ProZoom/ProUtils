package com.top.proutils.tool;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class BitmapTool {

    private static final String TAG = "BitmapTool";
    private static volatile BitmapTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();

    public static final double KB = 1024.0;
    public static final double MB = KB * KB;
    public static final double GB = KB * KB * KB;

    public BitmapTool() {

    }

    //单例模式，懒汉氏
    public static BitmapTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new BitmapTool();
                }
            }
        }
        return instance;
    }


    /**
     * convert Bitmap to byte array
     * Bitmap转byte数组
     *
     * @param b
     * @return
     */
    public byte[] bitmapToByte(Bitmap b) {
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        b.compress(Bitmap.CompressFormat.PNG, 100, o);
        return o.toByteArray();
    }

    /**
     * convert byte array to Bitmap
     * byte数组转bitmp
     *
     * @param b
     * @return
     */
    public Bitmap byteToBitmap(byte[] b) {
        return (b == null || b.length == 0) ? null : BitmapFactory.decodeByteArray(b, 0, b.length);
    }

    /**
     * 把bitmap转换成Base64编码String
     *
     * @param bitmap
     * @return
     */
    public String bitmapToString(Bitmap bitmap) {
        return Base64.encodeToString(bitmapToByte(bitmap), Base64.DEFAULT);
    }

    /**
     * convert Drawable to Bitmap
     *
     * @param drawable
     * @return
     */
    public Bitmap drawableToBitmap(Drawable drawable) {
        return drawable == null ? null : ((BitmapDrawable) drawable).getBitmap();
    }

    /**
     * convert Bitmap to Drawable
     *
     * @param bitmap
     * @return
     */
    public Drawable bitmapToDrawable(Bitmap bitmap) {
        return bitmap == null ? null : new BitmapDrawable(bitmap);
    }

    /**
     * scale image
     *
     * @param org
     * @param newWidth
     * @param newHeight
     * @return
     */
    public Bitmap scaleImageTo(Bitmap org, int newWidth, int newHeight) {
        return scaleImage(org, (float) newWidth / org.getWidth(), (float) newHeight / org.getHeight());
    }

    /**
     * scale image
     *
     * @param src
     * @param scaleWidth
     * @param scaleHeight
     * @return
     */
    public Bitmap scaleImage(Bitmap src, float scaleWidth, float scaleHeight) {
        if (src == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(scaleWidth, scaleHeight);
        return Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), matrix, true);
    }

    /**
     * 圆bitmap
     *
     * @param bitmap
     * @return
     */
    public Bitmap toRoundCorner(Bitmap bitmap) {
        int height = bitmap.getHeight();
        int width = bitmap.getHeight();
        Bitmap output = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);

        Canvas canvas = new Canvas(output);

        final Paint paint = new Paint();
        final Rect rect = new Rect(0, 0, width, height);

        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(Color.TRANSPARENT);
        canvas.drawCircle(width / 2, height / 2, width / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return output;
    }

    /**
     * 生成bitmap缩略图
     *
     * @param bitmap
     * @param needRecycle 是否释放bitmap原图
     * @param newHeight   目标宽度
     * @param newWidth    目标高度
     * @return
     */
    public Bitmap createBitmapThumbnail(Bitmap bitmap, boolean needRecycle, int newHeight, int newWidth) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        // 计算缩放比例
        float scaleWidth = ((float) newWidth) / width;
        float scaleHeight = ((float) newHeight) / height;
        // 取得想要缩放的matrix参数
        Matrix matrix = new Matrix();
        matrix.postScale(scaleWidth, scaleHeight);
        // 得到新的图片
        Bitmap newBitMap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        if (needRecycle)
            bitmap.recycle();
        return newBitMap;
    }

    /**
     * 保存Bitmap到文件
     *
     * @param bitmap
     * @param target
     */
    public void saveBitmap(Bitmap bitmap, File target) {
        if (target.exists()) {
            target.delete();
        }
        try {
            FileOutputStream out = new FileOutputStream(target);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 保存Bitmap到文件
     *
     * @param bitmap
     * @param quality 保存质量 0..100
     * @param target
     */
    public void saveBitmap(Bitmap bitmap, int quality, File target) {
        if (target.exists()) {
            target.delete();
        }
        try {
            FileOutputStream out = new FileOutputStream(target);
            bitmap.compress(Bitmap.CompressFormat.JPEG, quality, out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 压缩bitmp到目标大小（质量压缩）
     *
     * @param bitmap
     * @param needRecycle
     * @param maxSize
     * @return
     */
    public Bitmap compressBitmap(Bitmap bitmap, boolean needRecycle, long maxSize) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
        int options = 100;
        while (baos.toByteArray().length > maxSize) {
            baos.reset();//重置baos即清空baos
            bitmap.compress(Bitmap.CompressFormat.JPEG, options, baos);
            options -= 10;//每次都减少10
        }
        ByteArrayInputStream isBm = new ByteArrayInputStream(baos.toByteArray());
        Bitmap bm = BitmapFactory.decodeStream(isBm, null, null);
        if (needRecycle) {
            bitmap.recycle();
        }
        bitmap = bm;
        return bitmap;
    }

    /**
     * 等比压缩（宽高等比缩放）
     *
     * @param bitmap
     * @param needRecycle
     * @param targetWidth
     * @param targeHeight
     * @return
     */
    public Bitmap compressBitmap(Bitmap bitmap, boolean needRecycle, int targetWidth, int targeHeight) {
        float sourceWidth = bitmap.getWidth();
        float sourceHeight = bitmap.getHeight();

        float scaleWidth = targetWidth / sourceWidth;
        float scaleHeight = targeHeight / sourceHeight;

        Matrix matrix = new Matrix();
        matrix.postScale(scaleWidth, scaleHeight); //长和宽放大缩小的比例
        Bitmap bm = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (needRecycle) {
            bitmap.recycle();
        }
        bitmap = bm;
        return bitmap;
    }

    public Bitmap compressBitmap(String imageFile, boolean qualityCompress, long maxSize, int targetWidth, int targeHeight) {
        return compress(imageFile, null, false, qualityCompress, maxSize, targetWidth, targeHeight);
    }

    private Bitmap compress(String imageFile, String targetFile, boolean isSave, boolean qualityCompress, long maxSize, int targetWidth, int targeHeight) {
        final BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options); //加载图片信息
        int sourceWidth = options.outWidth;
        int sourceHeight = options.outHeight;
        options.inJustDecodeBounds = false;
        //计算inSampleSize
        int inSampleSize = 1;
        //先根据宽度进行缩小
        while (sourceWidth / inSampleSize > targetWidth) {
            inSampleSize++;
        }
        //然后根据高度进行缩小
        while (sourceHeight / inSampleSize > targeHeight) {
            inSampleSize++;
        }

        if (inSampleSize <= 0) {
            inSampleSize = 1;
        }
        options.inSampleSize = inSampleSize;
        Bitmap bitmap = BitmapFactory.decodeFile(imageFile, options);//加载真正bitmap

        bitmap = compressBitmap(bitmap, false, targetWidth, targeHeight); //等比缩放
        if (qualityCompress) {
            bitmap = compressBitmap(bitmap, true, maxSize); //压缩质量
        }

        if (isSave) {
            String savePath = imageFile;
            if ((targetFile != null)) {
                savePath = targetFile;
            }

            saveBitmap(bitmap, new File(savePath));//保存图片
        }

        return bitmap;
    }

    /**
     * 压缩某张图片(执行步骤sampleSize压缩->等比压缩->质量压缩)
     *
     * @param imageFile
     * @param targetFile      保存目标，为空表示源地址保存
     * @param qualityCompress 是否做质量压缩
     * @param maxSize         目标图片大小
     * @param targetWidth
     * @param targeHeight
     */
    public void compressImage(String imageFile, String targetFile, boolean qualityCompress, long maxSize, int targetWidth, int targeHeight) {
        Bitmap bitmap = compress(imageFile, targetFile, true, qualityCompress, maxSize, targetWidth, targeHeight);
        bitmap.recycle();
    }

    public void compressImage(String imageFile, boolean qualityCompress, long maxSize, int targetWidth, int targeHeight) {
        compressImage(imageFile, null, qualityCompress, maxSize, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param targetWidth
     * @param targeHeight
     */
    public void compressImage(String imageFile, int targetWidth, int targeHeight) {
        compressImage(imageFile, null, false, 0L, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param targetWidth
     * @param targeHeight
     * @return
     */
    public Bitmap compressBitmap(String imageFile, int targetWidth, int targeHeight) {
        return compressBitmap(imageFile, false, 0L, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param scale     图片缩小倍速
     */
    public void compressImageSmall(String imageFile, int scale) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth / scale;
        int targeHeight = options.outHeight / scale;
        compressImage(imageFile, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param scale     图片缩小倍速
     * @return
     */
    public Bitmap compressBitmapSmall(String imageFile, int scale) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth / scale;
        int targeHeight = options.outHeight / scale;
        return compressBitmap(imageFile, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param scale     图片放大倍速
     */
    public void compressImageBig(String imageFile, int scale) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth * scale;
        int targeHeight = options.outHeight * scale;
        compressImage(imageFile, targetWidth, targeHeight);
    }

    /**
     * 图片缩放-尺寸缩放
     *
     * @param imageFile
     * @param scale     图片放大倍速
     * @return
     */
    public Bitmap compressBitmapBig(String imageFile, int scale) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth * scale;
        int targeHeight = options.outHeight * scale;
        return compressBitmap(imageFile, targetWidth, targeHeight);
    }

    /**
     * 质量压缩图片
     *
     * @param imageFile
     * @param targetFile
     * @param qualityCompress
     * @param maxSize
     */
    public void compressImage(String imageFile, String targetFile, boolean qualityCompress, long maxSize) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth / 2;
        int targeHeight = options.outHeight / 2;
        compressImage(imageFile, targetFile, qualityCompress, maxSize, targetWidth, targeHeight);
    }

    /**
     * 质量压缩图片
     *
     * @param imageFile
     * @param qualityCompress
     * @param maxSize
     */
    public void compressImage(String imageFile, boolean qualityCompress, long maxSize) {
        compressImage(imageFile, null, qualityCompress, maxSize);
    }

    /**
     * 质量压缩图片
     *
     * @param imageFile
     * @param qualityCompress
     * @param maxSize
     * @return
     */
    public Bitmap compressBitmap(String imageFile, boolean qualityCompress, long maxSize) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imageFile, options);
        int targetWidth = options.outWidth / 2;
        int targeHeight = options.outHeight / 2;
        return compressBitmap(imageFile, qualityCompress, maxSize, targetWidth, targeHeight);
    }

    /**
     * 质量压缩图片-压缩在maxSize以内
     *
     * @param imageFile
     * @param maxSize
     */
    public void compressImage(String imageFile, long maxSize) {
        compressImage(imageFile, true, maxSize);
    }

    /**
     * 质量压缩图片-压缩在maxSize以内
     *
     * @param imageFile
     * @param maxSize
     * @return
     */
    public Bitmap compressBimap(String imageFile, long maxSize) {
        return compressBitmap(imageFile, true, maxSize);
    }

    /**
     * 质量压缩图片-压缩在1M以内
     *
     * @param imageFile
     */
    public void compressImage(String imageFile) {
        compressImage(imageFile, true, (long) (1 * MB));
    }

    /**
     * 质量压缩图片-压缩在1M以内
     *
     * @param imageFile
     * @return
     */
    public Bitmap compressBitmap(String imageFile) {
        return compressBitmap(imageFile, true, (long) (1 * MB));
    }

    /**
     * 旋转bitmap
     *
     * @param bitmap
     * @param degress     旋转角度
     * @param needRecycle
     * @return
     */
    public Bitmap rotateBitmap(Bitmap bitmap, int degress, boolean needRecycle) {
        Matrix m = new Matrix();
        m.postRotate(degress);
        Bitmap bm = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, true);
        if (needRecycle) {
            bitmap.recycle();
        }
        return bm;
    }

    /**
     * 根据path, 获取图片旋转角度
     *
     * @param path
     * @return
     */
    public final int getDegress(String path) {
        int degree = 0;
        try {
            ExifInterface exifInterface = new ExifInterface(path);
            int orientation = exifInterface.getAttributeInt(
                    ExifInterface.TAG_ORIENTATION,
                    ExifInterface.ORIENTATION_NORMAL);
            switch (orientation) {
                case ExifInterface.ORIENTATION_ROTATE_90:
                    degree = 90;
                    break;
                case ExifInterface.ORIENTATION_ROTATE_180:
                    degree = 180;
                    break;
                case ExifInterface.ORIENTATION_ROTATE_270:
                    degree = 270;
                    break;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return degree;
    }

    private String rootPath = Environment.getExternalStorageDirectory().getAbsolutePath();

    public File writeToFile(byte[] data, String status) {
        String dir = rootPath + File.separator + "face_image";
        File dirPath = new File(dir);
        if (!dirPath.exists()) {
            dirPath.mkdir();
        }

        String filePath = dir + "/" + status + "_" + ".bmp";
        File file = new File(filePath);
        if (file.exists()) {
            file.delete();
        }

        FileOutputStream fos = null;
        try {
            file.createNewFile();
            fos = new FileOutputStream(file);
            fos.write(data);
            fos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != fos) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return file;
    }

    /**
     * 压缩图片（质量压缩）
     *
     * @param bitmap
     */
    public File compressImage(Bitmap bitmap, String status) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);//质量压缩方法，这里100表示不压缩，把压缩后的数据存放到baos中
        int options = 100;
        while (baos.toByteArray().length / 1024 > 100) {  //循环判断如果压缩后图片是否大于500kb,大于继续压缩
            baos.reset();//重置baos即清空baos
            options -= 10;//每次都减少10
            bitmap.compress(Bitmap.CompressFormat.JPEG, options, baos);//这里压缩options%，把压缩后的数据存放到baos中
            long length = baos.toByteArray().length;
        }
        String dir = rootPath + File.separator + "face_image";
        File dirPath = new File(dir);
        if (!dirPath.exists()) {
            dirPath.mkdir();
        }

        String filePath = dir + "/" + status + "_" + ".bmp";
        File file = new File(filePath);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fos = new FileOutputStream(file);
            try {
                fos.write(baos.toByteArray());
                fos.flush();
                fos.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        recycleBitmap(bitmap);
        return file;
    }

    /**
     * bitmap转换为byte[]并且压缩
     *
     * @param bm
     * @param kb
     * @return
     */
    public byte[] bitmap2Bytes(Bitmap bm, int kb) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bm.compress(Bitmap.CompressFormat.PNG, 100, baos);
        int options = 100;
        while (baos.toByteArray().length / 1024 > kb) {  //循环判断如果压缩后图片是否大于kb,大于继续压缩
            baos.reset();//重置baos即清空baos
            options -= 10;//每次都减少10
            bm.compress(Bitmap.CompressFormat.JPEG, options, baos);//这里压缩options%，把压缩后的数据存放到baos中
        }
        return baos.toByteArray();
    }

    /**
     * 选择变换
     *
     * @param origin 原图
     * @param alpha  旋转角度，可正可负
     * @return 旋转后的图片
     */
    public Bitmap rotateBitmap(Bitmap origin, float alpha) {
        if (origin == null) {
            return null;
        }
        int width = origin.getWidth();
        int height = origin.getHeight();
        Matrix matrix = new Matrix();
        matrix.setRotate(alpha);
        // 围绕原地进行旋转
        Bitmap newBM = Bitmap.createBitmap(origin, 0, 0, width, height, matrix, false);
        if (newBM.equals(origin)) {
            return newBM;
        }
        origin.recycle();
        return newBM;
    }

    public static void recycleBitmap(Bitmap... bitmaps) {
        if (bitmaps == null) {
            return;
        }
        for (Bitmap bm : bitmaps) {
            if (null != bm && !bm.isRecycled()) {
                bm.recycle();
            }
        }
    }


    /**
     * RGB_565方式读取资源到Bitmap
     *
     * @param context 全局context
     * @param resId   资源id
     * @return bitmap
     */
    public Bitmap readBitMap(Context context, int resId) {
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inPreferredConfig = Bitmap.Config.RGB_565;
        opt.inPurgeable = true;
        opt.inInputShareable = true;
        InputStream is = context.getResources().openRawResource(resId);
        return BitmapFactory.decodeStream(is, null, opt);
    }

    /**
     * RGB_565方式读取资源到Bitmap
     *
     * @param path 文件图片路径
     * @return bitmap
     */
    public Bitmap readBitMap(String path) {
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inPreferredConfig = Bitmap.Config.RGB_565;
        opt.inPurgeable = true;
        opt.inInputShareable = true;
        return BitmapFactory.decodeFile(path, opt);
    }

    /**
     * Bitmap 转 byte[]
     *
     * @param bitmap 待转bitmap
     * @return 成功-byte[] 失败-null
     */
    public byte[] bitmap2Bytes(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = null;
        if (bitmap != null && !bitmap.isRecycled()) {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                if (byteArrayOutputStream.toByteArray() == null) {
                    Log.i(TAG, "bitmap2Bytes byteArrayOutputStream toByteArray=null");
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                Log.i(TAG, "bitmap2Bytes exception", e);

            } finally {
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException var14) {
                        ;
                    }
                }
            }

            return null;
        } else {
            Log.i(TAG, "bitmap2Bytes bitmap == null or bitmap.isRecycled()");
            return null;
        }
    }

    /**
     * 压缩图片到指定byte大小 (在保证质量的情况下尽可能压缩 不保证压缩到指定字节)
     *
     * @param datas     图片byte格式
     * @param byteCount 指定压缩到字节数
     * @return 压缩后的byte[] (不保证压缩到指定字节)
     */
    public byte[] compressBitmap(byte[] datas, int byteCount) {
        boolean isFinish = false;
        if (datas != null && datas.length > byteCount) {
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Bitmap tmpBitmap = BitmapFactory.decodeByteArray(datas, 0, datas.length);
            int times = 1;
            double percentage = 1.0D;

            while (!isFinish && times <= 10) {
                percentage = Math.pow(0.8D, (double) times);
                int compress_datas = (int) (100.0D * percentage);
                tmpBitmap.compress(Bitmap.CompressFormat.JPEG, compress_datas, outputStream);
                if (outputStream != null && outputStream.size() < byteCount) {
                    isFinish = true;
                } else {
                    outputStream.reset();
                    ++times;
                }
            }

            if (outputStream != null) {
                byte[] outputStreamByte = outputStream.toByteArray();
                if (!tmpBitmap.isRecycled()) {
                    tmpBitmap.recycle();
                }

                if (outputStreamByte.length > byteCount) {
                    Log.i(TAG, "compressBitmap cannot compress to " + byteCount + ", after compress size=" + outputStreamByte.length);
                }

                return outputStreamByte;
            }
        }

        return datas;
    }


}
