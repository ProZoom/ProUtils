package com.top.proutilsdemo.business.AppInfos;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.top.proutilsdemo.R;
import com.top.proutilsdemo.adapter.AppInfosAdapter;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：
 */
public class AppInfosActivity extends Activity implements AppInfosContract.View {


    @BindView(R.id.rlv_appinfos)
    RecyclerView rlvAppinfos;

    ArrayList<AppInfosBean> mAppInfoList=new ArrayList<>();

    private AppInfosContract.Presenter mPresenter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_appinfos);

        ButterKnife.bind(this);

        rlvAppinfos.setLayoutManager(new LinearLayoutManager(this));

        rlvAppinfos.setAdapter(new AppInfosAdapter(this,mPresenter.getAllNonsystemProgramInfo(this)));

    }

    @Override
    public void showToast(String msg) {

    }

    @Override
    public void showAlertDialog(String msg) {

    }

}
