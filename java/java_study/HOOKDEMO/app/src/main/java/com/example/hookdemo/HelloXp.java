package com.example.hookdemo;
/*
    需要切换文件，需要在assets中更换类名文件
 */
import android.util.Log;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Map;

public class HelloXp implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) throws Throwable {
        Log.d("snackdeng","加载成功");
        if (loadPackageParam.packageName.equals("com.muyang.xposeddemo")) {
            Log.d("snackdeng", "Hook自己的例子");
            //查找类字节码 calssName里面是文件下的类名
            final Class clazz = XposedHelpers.findClass("com.muyang.xposeddemo.Demo",loadPackageParam.classLoader);
            //设置静态变量的值
            XposedHelpers.setStaticIntField(clazz,"staticInt",10000); //静态变量名为staticInt 类型为Int(IntField)，设置值为10000
            XposedHelpers.setStaticObjectField(clazz,"Tag","bilibili"); //静态变量名为Tag 类型为String(没有这个方法，用object代替) 值为bilibili
            //HOOK 构造函数 即方法名和类名一样，没有返回值
            XposedHelpers.findAndHookConstructor(clazz, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    Log.d("snackdeng","无参构造函数之前");

                }
                @Override
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                    Log.d("snackdeng", "无参构造函数之后");
                }
            });
            //修改构造函数的参数 和上面一样，但是有参数 string是参数的类型
            XposedHelpers.findAndHookConstructor(clazz,String.class,new XC_MethodHook() {
                public void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    //super.beforeHookedMethod(param);
                    //修改传进去的参数
                    param.args[0]="HOOK修改参数之前11111";
                }
                public void afterHookedMethod(MethodHookParam param) throws Throwable {
                    //super.afterHookedMethod(param);
                    Log.d("snackdeng","Hook修改参数之后");
                }
            });
            //HOOK普通方法 "这里是方法名" string类型的参数   适合一个参数
            XposedHelpers.findAndHookMethod(clazz, "publicFunc", String.class, new XC_MethodHook() {
                public void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    Log.d("snackdeng","HOOK普通方法之前"+param.args[0]);
                    Log.d("snackdeng","publicFunc is hooked before");
                }
                @Override
                public void afterHookedMethod(MethodHookParam param) throws Throwable {
                    Log.d("snackdeng","HOOK普通方法之后");
                }
            });
            //HOOK普通方法 复杂参数
            //参数 String value, String[][] str, Map<String,String>map, ArrayList arrayList
            //改写后 String.class, String[][].class, Map.class, ArrayList.class
            XposedHelpers.findAndHookMethod(clazz, "complexParameterFunc",
                    String.class,
                    "[[Ljava.lang.String;",
                    Map.class,
                    Class.forName("java.util.ArrayList", true, loadPackageParam.classLoader),
                    new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
//                    super.beforeHookedMethod(param);
                    Log.d("snackdeng","HOOK复杂参数之前123");
                }
            });
            //HOOK自定义参数 方法 如果用类做参数
            //Animal dog, String value
            XposedHelpers.findAndHookMethod(clazz, "Inner",
                    "com.muyang.xposeddemo.Animal",
                    String.class, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
//                    super.beforeHookedMethod(param);
                    Log.d("snackdeng","HOOK自定义参数之前1111");
                }
            });
            //HOOK 覆盖函数
            XposedHelpers.findAndHookMethod(clazz, "repleaceFunc", new XC_MethodReplacement() {
                @Override
                protected Object replaceHookedMethod(MethodHookParam methodHookParam) throws Throwable {
                    Log.d("snackdeng","替换函数生效");
                    return null;
                }
            });
            //HOOK 内部类 并且主动调用
            //HOOK 内部类
            XposedHelpers.findAndHookMethod("com.muyang.xposeddemo.Demo$InnerClass", loadPackageParam.classLoader, "innerFunc",
                    String.class,
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
//                            super.beforeHookedMethod(param);
                            Log.d("snackdeng","前");
                            //HOOK 主动调用
                            XposedHelpers.callMethod(clazz.newInstance(),"refl");
                            Log.d("snackdeng","后111111");
                            int aa = XposedHelpers.getIntField(param.thisObject,"innerPublicInt");
                            Log.d("snackdeng",""+aa);
                        }
                    });
            //HOOK 反射
            XposedHelpers.findAndHookMethod(XposedHelpers.findClass("com.muyang.xposeddemo.Demo$InnerClass",
                    loadPackageParam.classLoader),
                    "innerFunc", String.class,
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
//                            super.beforeHookedMethod(param);
                            //通过找到的类字段  getDeclaredField是获取私有的
                            Field file = clazz.getDeclaredField("reflect");
                            Object obj = clazz.newInstance();
                            //设置属性为真，才能获取私有
                            file.setAccessible(true);
                            String str = (String) file.get(obj);
                            Log.d("snackdeng","反射获取到的值"+str);
                            file.set(obj,"fanshexiugai");
                            String str2 = (String) file.get(obj);
                            Log.d("snackdeng","反射获取到的值"+str2);
                            //获取方法
                            Method meth = clazz.getDeclaredMethod("refl");
                            meth.setAccessible(true);
                            //JAVA反射的调用方法
                            meth.invoke(obj);
                            meth.invoke(obj);
                            meth.invoke(obj);
                        }
                    });
            //获取所有方法和字段，并且内部函数方法和字段也可以
            //遍历所有的方法和字段
            for (Method method:clazz.getDeclaredMethods()) {
                Log.d("snackdeng","遍历方法"+method.toString());
            }
            for (Field fd:clazz.getDeclaredFields()) {
                Log.d("snackdeng","遍历字段"+fd.toString());
            }
            Log.d("snackdeng","=================");
            //遍历内部类
            Class[] cls = clazz.getDeclaredClasses();
            for (int i = 0; i <cls.length ; i++) {
                Log.d("snackdeng",cls[i].getName());
                //遍历内部类的所有的方法和字段
                for (Method method1:cls[i].getDeclaredMethods()) {
                    Log.d("snackdeng","遍历内部方法"+method1.toString());
                }
                for (Field fd1:cls[i].getDeclaredFields()) {
                    Log.d("snackdeng","遍历内部字段"+fd1.toString());
                }
            }

        }
    }
}
