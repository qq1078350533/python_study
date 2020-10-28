package com.snackdeng.com;

public abstract class c {


    public abstract int a(int i);

    public int b() {
        return a(32);
    }

    public long c() {
        return (((long) b()) << 32) + ((long) b());
    }


}