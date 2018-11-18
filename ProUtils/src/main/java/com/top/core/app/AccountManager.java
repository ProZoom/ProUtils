package com.top.core.app;

/**
 * 作者：ProZoom
 * 时间：2018/10/26
 * 描述：
 */
public class AccountManager {


    private enum SignTag {
        SIGN_TAG
    }

    /*
     保存用户登陆状态
     */
    public static void setSignState(boolean state){
        TopPreference.setAppFlag(SignTag.SIGN_TAG.name(),state);
    }

    private static boolean isSignIn(){
        return TopPreference.getAppFlag(SignTag.SIGN_TAG.name());
    }
    
    
    public static void checkAccount(IUserChecker checker){
        if (isSignIn()) {
            checker.onSignIn();
        }else {
            checker.onNoSignIn();
        }
    }

    

}
