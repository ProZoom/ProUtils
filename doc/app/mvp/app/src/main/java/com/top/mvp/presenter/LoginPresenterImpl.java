package com.top.mvp.presenter;


import com.top.mvp.view.activity.LoginView;
import com.top.mvp.impl.OnLoginFinishedListener;
import com.top.mvp.model.LoginModel;
import com.top.mvp.model.LoginModelImpl;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：
 * 1 完成presenter的实现。这里面主要是Model层和View层的交互和操作。
 * 2  presenter里面还有个OnLoginFinishedListener，
 * 其在Presenter层实现，给Model层回调，更改View层的状态，
 * 确保 Model层不直接操作View层。如果没有这一接口在LoginPresenterImpl实现的话，
 * LoginPresenterImpl只 有View和Model的引用那么Model怎么把结果告诉View呢？
 */
public class LoginPresenterImpl implements LoginPresenter,OnLoginFinishedListener {

    //////////////////////////////////
    LoginModel loginModel;////////////
    LoginView loginView;//////////////
    //////////////////////////////////

    public LoginPresenterImpl(LoginView loginView) {
        this.loginView=loginView;
        this.loginModel=new LoginModelImpl();
    }

    @Override
    public void validateCredentials(String username, String password) {
        if(loginView!=null){
            loginView.showProgress();
        }

        loginModel.login(username,password,this);
    }

    @Override
    public void onDestroy() {
        loginView=null;
    }

    @Override
    public void onUsernameError() {
        if(loginView!=null){
            loginView.setUserNameError();
            loginView.hideProgress();
        }
    }

    @Override
    public void onPasswordError() {
        if(loginView!=null){
            loginView.setPasswordError();
            loginView.hideProgress();
        }
    }

    @Override
    public void onSuccess() {
        if(loginView!=null){
            loginView.navigateToHome();
            loginView.hideProgress();
        }
    }
}
