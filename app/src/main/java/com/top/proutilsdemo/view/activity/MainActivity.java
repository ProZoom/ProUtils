package com.top.proutilsdemo.view.activity;

import android.Manifest;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;

import com.top.proutils.permissiongen.PermissionGen;
import com.top.proutils.ui.StatusBarUtils;
import com.top.proutilsdemo.R;
import com.top.proutilsdemo.adapter.MainAdapter;
import com.top.proutilsdemo.listener.IViewItemItemListener;
import com.top.proutilsdemo.model.CategoryEntity;
import com.top.proutilsdemo.model.Info;
import com.top.proutilsdemo.presenter.AnToolProducer;

import java.util.ArrayList;

import static com.top.proutilsdemo.constants.constants.CATES;
import static com.top.proutilsdemo.constants.constants.INFOIDS;
import static com.top.proutilsdemo.constants.constants.INFOS;
import static com.top.proutilsdemo.constants.constants.SETTINGIDS;
import static com.top.proutilsdemo.constants.constants.SETTINGS;
import static com.top.proutilsdemo.constants.constants.TOOLIDS;
import static com.top.proutilsdemo.constants.constants.TOOLS;


public class MainActivity extends AppCompatActivity implements IViewItemItemListener {

    private static final java.lang.String TAG = "MainActivity";
    private RecyclerView mRecycler;
    private MainAdapter adapter;
    private ArrayList<CategoryEntity> categories = new ArrayList<>();
    //private MainProducer mainProducer;

    private Toolbar mToolBar;
    private DrawerLayout mDrawerLayout;

    AnToolProducer anToolProducer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        checkNeedPermissions();
        anToolProducer = new AnToolProducer(this);
        //mainProducer = new MainProducer(this);
        initToolBar();
        initDrawerLayout();
        initData();
        initRecycler();
    }

    private void initToolBar() {

        mToolBar = findViewById(R.id.toolbar);
        setSupportActionBar(mToolBar);

    }

    private void initDrawerLayout() {

        mDrawerLayout = findViewById(R.id.mDrawerLayout);
        StatusBarUtils.setColorForDrawerLayout(this, mDrawerLayout, getResources().getColor(R.color.colorAccent));
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, mDrawerLayout, mToolBar, R.string.app_name, R.string.app_name);
        mDrawerLayout.setDrawerListener(toggle);
        toggle.syncState();
        mDrawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_LOCKED_CLOSED);

    }

    private void initRecycler() {
        mRecycler = findViewById(R.id.recyclerview);
        adapter = new MainAdapter(this);
        GridLayoutManager manager = new GridLayoutManager(this, 4);
        mRecycler.setLayoutManager(manager);
        adapter.setLayoutManager(manager);
        adapter.setCategories(categories);
        mRecycler.setAdapter(adapter);
        adapter.setIViewItemListener(this);
    }

    //private FABBaseDialog fabBaseDialog;


    public void initData() {
        //infos
        ArrayList<Info> infos1 = new ArrayList<>();
        CategoryEntity category1 = new CategoryEntity();
        category1.setCategory(CATES[0]);
        for (int i = 0; i < INFOS.length; i++) {
            infos1.add(new Info(INFOS[i], INFOIDS[i]));
        }
        category1.setInfos(infos1);

        //settings
        ArrayList<Info> infos2 = new ArrayList<>();
        CategoryEntity category2 = new CategoryEntity();
        category2.setCategory(CATES[1]);
        for (int i = 0; i < SETTINGS.length; i++) {
            infos2.add(new Info(SETTINGS[i], SETTINGIDS[i]));
        }
        category2.setInfos(infos2);


        ArrayList<Info> infos4 = new ArrayList<>();
        CategoryEntity category4 = new CategoryEntity();
        category4.setCategory(CATES[2]);
        for (int i = 0; i < TOOLS.length; i++) {
            infos4.add(new Info(TOOLS[i], TOOLIDS[i]));
        }
        category4.setInfos(infos4);


        categories.add(category1);
        categories.add(category2);
        categories.add(category4);
    }


    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        PermissionGen.onRequestPermissionsResult(this, requestCode, permissions, grantResults);
    }

    public void checkNeedPermissions() {
        PermissionGen.with(this)
                .addRequestCode(100)
                .permissions(
                        Manifest.permission.READ_PHONE_STATE,
                        Manifest.permission.CALL_PHONE,
                        Manifest.permission.GET_ACCOUNTS,
                        Manifest.permission.WRITE_EXTERNAL_STORAGE,
                        Manifest.permission.READ_EXTERNAL_STORAGE,
                        Manifest.permission.CAMERA,
                        Manifest.permission.ACCESS_WIFI_STATE)
                .request();
    }

    @Override
    public void onItemClickListener(View v, int position, int whichPos) {
        Info currentItem = adapter.getCurrentItem(position, whichPos);
        //Toast.makeText(this, "" + currentItem, Toast.LENGTH_SHORT).show();
        //Toast.makeText(this, AnTools.device().getPhoneModel(), Toast.LENGTH_SHORT).show();
        switch (currentItem.getResourceId()) {
            case R.drawable.ic_android:
                showAlertDialog(anToolProducer.buildDeviceInfos());
                break;
            case R.drawable.ic_mobile:
                showAlertDialog(anToolProducer.buildSysInfos());
                break;
            case R.drawable.ic_wifi:
                //showAlertDialog(anToolProducer.buildSysInfos());
        }
        //showAlertDialog(anToolProducer.buildSysInfos());
    }

    private void showAlertDialog(String msg) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);

        builder.setMessage(msg).show();
    }


}
