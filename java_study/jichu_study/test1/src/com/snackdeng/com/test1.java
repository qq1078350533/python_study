package com.snackdeng.com;

public class test1 {
    public static void main(String[] args) {
        Character[] f40515a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        long c2 = c.f44757a.c();
        long currentTimeMillis = System.currentTimeMillis();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 8; i++) {
            stringBuffer.append(f40515a[(int) (currentTimeMillis & 15)].charValue());
            stringBuffer.append(f40515a[(int) (15 & c2)].charValue());
            int i2 = i * 4;
            currentTimeMillis >>= i2;
            c2 >>= i2;
        }
        System.out.println(stringBuffer);
    }


}
