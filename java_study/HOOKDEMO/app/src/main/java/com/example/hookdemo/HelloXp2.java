package com.example.hookdemo;
/*
    需要切换文件，需要在assets中更换类名文件
 */


import android.util.Log;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public class HelloXp2 implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) throws Throwable {
        if (loadPackageParam.packageName.equals("com.muyang.xposeddemo")) {
            //HOOK 所有方法
            XposedHelpers.findAndHookMethod(ClassLoader.class, "loadClass", String.class,
                    new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {
//                    super.afterHookedMethod(param);

                    Class clzz = (Class) param.getResult();
                    //获取类名称
                    String className = clzz.getName();
                    Log.d("snackdeng", "获取到的类名称" + className);
                    //判断类名
                    if (className.contains("com.muyang")) {
                        Method[] mds = clzz.getDeclaredMethods();
                        for (int i = 0; i <mds.length ; i++) {
                            final Method md = mds[i];
                            //反射获取修饰符
                            int mod = mds[i].getModifiers();
                            //循环判断
                            if (!Modifier.isAbstract(mod) && !Modifier.isNative(mod) && !Modifier.isInterface(mod)) {
                                XposedBridge.hookMethod(mds[i], new XC_MethodHook() {
                                    @Override
                                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                                        //super.beforeHookedMethod(param);
                                        //这里就可以打印出所有的方法名称
                                        if (md.getName().equals("complexParameterFunc")) {
                                            for (Object obj:param.args) {
                                                Log.d("snackdeng",obj.getClass().getName());
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    }
                }
            });
        }
    }
}

