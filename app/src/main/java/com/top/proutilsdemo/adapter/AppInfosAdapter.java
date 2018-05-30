package com.top.proutilsdemo.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.top.proutilsdemo.R;
import com.top.proutilsdemo.business.AppInfos.AppInfosBean;

import java.util.List;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：
 */
public class AppInfosAdapter extends RecyclerView.Adapter<AppInfosAdapter.AppInfoViewHolder> {

    List<AppInfosBean> mData;

    Context context;

    public AppInfosAdapter(Context context,List<AppInfosBean> allNonsystemProgramInfo) {

        this.mData=allNonsystemProgramInfo;
        this.context=context;
    }

    @NonNull
    @Override
    public AppInfoViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        return new AppInfoViewHolder(LayoutInflater.from(context).inflate(R.layout.item_appinfos,null));
    }

    @Override
    public void onBindViewHolder(@NonNull AppInfoViewHolder holder, int position) {

    }

    @Override
    public int getItemCount() {


        return mData.size();
    }


    public class AppInfoViewHolder extends RecyclerView.ViewHolder {

        public AppInfoViewHolder(View itemView) {
            super(itemView);
        }
    }
}
