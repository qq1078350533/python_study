package com.m4399.framework.helpers;

public class AppNativeHelper {
    static {
        try{
            System.loadLibrary("m4399");
        }
        catch (UnsatisfiedLinkError v0) {
            v0.printStackTrace();
        }
    }
    public static final native String desCbcEncrypt(String str);
    public static final native String getServerApi(String str);

}
