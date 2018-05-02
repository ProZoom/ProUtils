package com.top.mvp;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：
 */
public class LoginActivity extends Activity implements View.OnClickListener,LoginView {

    private ProgressBar progressBar;
    private EditText username;
    private EditText password;
    private LoginPresenter presenter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        progressBar = (ProgressBar) findViewById(R.id.progress);
        username = (EditText) findViewById(R.id.username);
        password = (EditText) findViewById(R.id.password);
        findViewById(R.id.button).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                        presenter.validateCredentials(username.getText().toString(), password.getText().toString());

            }
        });

        presenter = new LoginPresenterImpl( this);


    }

    @Override
    public void onClick(View v) {

    }


    @Override
    protected void onDestroy() {
        presenter.onDestroy();
        super.onDestroy();
    }


    @Override
    public void showProgress() {
        progressBar.setVisibility(View.VISIBLE);
    }

    @Override
    public void hideProgress() {
        progressBar.setVisibility(View.GONE);

    }

    @Override
    public void setUserNameError() {
        username.setError("用户名错误");
    }

    @Override
    public void setPasswordError() {
        password.setError("密码错误");
    }

    @Override
    public void navigateToHome() {
        Toast.makeText(this, "登陆成功！", Toast.LENGTH_SHORT).show();
    }
}
