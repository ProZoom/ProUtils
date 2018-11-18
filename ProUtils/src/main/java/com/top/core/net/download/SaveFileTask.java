package com.top.core.net.download;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;

import com.top.core.app.Top;
import com.top.core.net.callback.IRequest;
import com.top.core.net.callback.IRerofitCallBack;
import com.top.core.net.callback.ISuccess;
import com.top.utils.FileUtil;

import java.io.File;
import java.io.InputStream;

import okhttp3.ResponseBody;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class SaveFileTask extends AsyncTask<Object,Void,File> {

    private IRerofitCallBack iRerofitCallBack;

    private  IRequest REQUEST;
    private  ISuccess SUCCESS;

    public SaveFileTask(IRerofitCallBack iRerofitCallBack) {
        this.iRerofitCallBack = iRerofitCallBack;
    }

    SaveFileTask(IRequest REQUEST, ISuccess SUCCESS) {
        this.REQUEST = REQUEST;
        this.SUCCESS = SUCCESS;
    }

    @Override
    protected File doInBackground(Object[] objects) {
        String downloaddir= (String) objects[0];
        String extension= (String) objects[1];

        final String name= (String) objects[3];
        final ResponseBody body= (ResponseBody) objects[2];

        final InputStream is=body.byteStream();

        if (downloaddir==null||extension.equals("")) {
            extension="";
        }
        
        if (name==null) {
            return FileUtil.writeToDisk(is,downloaddir,extension.toUpperCase(),extension);
        }else {
            return FileUtil.writeToDisk(is,downloaddir,name);
        } 
    }

    @Override
    protected void onPostExecute(File file) {
        super.onPostExecute(file);
        if (iRerofitCallBack!=null) {
            iRerofitCallBack.onSuccess(file.getPath());
            iRerofitCallBack.onRequestEnd();
        }
        if (SUCCESS!=null) {
            SUCCESS.onSuccess(file.getPath());
        }
        if (REQUEST!=null) {
            REQUEST.onRequestEnd();
        }

        autoInstallApk(file);
    }


    private void autoInstallApk(File file){
        if (FileUtil.getExtension(file.getPath()).equals("apk")) {
            final Intent intent=new Intent();
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(Intent.ACTION_VIEW);
            intent.setDataAndType(Uri.fromFile(file),"application/vnd.android.package-archive");
            Top.getApplication().startActivity(intent);
        }
    }
}
