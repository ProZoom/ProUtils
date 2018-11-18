package com.top.core.delegates.bottom;

import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

import com.joanzapata.iconify.widget.IconTextView;
import com.top.core.delegates.TopDelegate;
import com.top.proutils.R;
import com.top.proutils.R2;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import butterknife.BindView;
import me.yokeyword.fragmentation.SupportFragment;

/**
 * 作者：ProZoom
 * 时间：2018/10/27
 * 描述：
 */
public abstract class BaseBottomDelegate extends TopDelegate {


    private final ArrayList<BottomItemDelegate> ITEM_DELEGATE = new ArrayList<>();

    private final ArrayList<BottomTabBean> TAB_BEANS = new ArrayList<>();

    private final LinkedHashMap<BottomTabBean, BottomItemDelegate> ITEMS = new LinkedHashMap<>();


    @BindView(R2.id.bottom_bar_delegate_container)
    FrameLayout bottomBarDelegateContainer;

    @BindView(R2.id.bottom_bar)
    LinearLayoutCompat bottomBar;

    private int mCurrentDelegate = 0;
    private int mIndexDelegate = 0;
    private int mClickColor = Color.RED;


    public abstract LinkedHashMap<BottomTabBean, BottomItemDelegate> setItems(ItemBuilder build);


    public abstract int setClickColor();

    public abstract int setIndexDelegate();


    @Override
    public Object setLayout() {
        return R.layout.delegate_bottom;
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        mIndexDelegate = setIndexDelegate();
        if (setClickColor() != 0) {
            mClickColor = setClickColor();
        }

        final ItemBuilder builder = ItemBuilder.builder();
        final LinkedHashMap<BottomTabBean, BottomItemDelegate> items = setItems(builder);

        ITEMS.putAll(items);

        for (Map.Entry<BottomTabBean, BottomItemDelegate> item : ITEMS.entrySet()) {
            final BottomTabBean key = item.getKey();
            final BottomItemDelegate value = item.getValue();

            TAB_BEANS.add(key);
            ITEM_DELEGATE.add(value);
        }
    }

    @Override
    public void onBindView(@Nullable Bundle savedInstanceState, View rootview) {
        final int size = ITEMS.size();
        for (int i = 0; i < size; i++) {
            View rootView = LayoutInflater.from(getContext()).inflate(R.layout.bottom_item, bottomBar);

            final RelativeLayout item = (RelativeLayout) bottomBar.getChildAt(i);

            //设置每个Item点击事件
            item.setTag(i);
            item.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    final int tag = (int) v.getTag();
                    resetColor();
                    final RelativeLayout item = (RelativeLayout) v;
                    final IconTextView itemIcon = (IconTextView) item.getChildAt(0);
                    itemIcon.setTextColor(mClickColor);
                    final AppCompatTextView itemTitle = (AppCompatTextView) item.getChildAt(1);
                    itemTitle.setTextColor(mClickColor);

                    getSupportDelegate().showHideFragment(ITEM_DELEGATE.get(tag), ITEM_DELEGATE.get(mCurrentDelegate));

                    //showHideFragment(ITEM_DELEGATE.get(tag),ITEM_DELEGATE.get(mCurrentDelegate));
                    //注意先后顺序
                    mCurrentDelegate=tag;
                }
            });

            final IconTextView itemIcon = (IconTextView) item.getChildAt(0);
            final AppCompatTextView itemTitle = (AppCompatTextView) item.getChildAt(1);

            final BottomTabBean bean = TAB_BEANS.get(i);
            //初始化数据
            itemIcon.setText(bean.getICON());
            itemTitle.setText(bean.getTITLe());

            if (i == mIndexDelegate) {
                itemIcon.setTextColor(mClickColor);
                itemTitle.setTextColor(mClickColor);
            }
        }

        final SupportFragment[] delegateArray = ITEM_DELEGATE.toArray(new SupportFragment[size]);
        loadMultipleRootFragment(R.id.bottom_bar_delegate_container, mIndexDelegate, delegateArray);
    }

    private void resetColor() {

        final int count = bottomBar.getChildCount();
        for (int i = 0; i < count; i++) {
            final RelativeLayout item = (RelativeLayout) bottomBar.getChildAt(i);
            final IconTextView itemIcon = (IconTextView) item.getChildAt(0);
            itemIcon.setTextColor(Color.GRAY);
            final AppCompatTextView itemTitle = (AppCompatTextView) item.getChildAt(1);
            itemTitle.setTextColor(Color.GRAY);
        }
    }


}
