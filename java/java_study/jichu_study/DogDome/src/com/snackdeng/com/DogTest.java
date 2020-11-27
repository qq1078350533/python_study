package com.snackdeng.com;

import java.util.LinkedHashMap;
import java.util.LinkedList;

public class DogTest {
    public static void main(String[] args) {
        LinkedList<Dog> doglist = new LinkedList<Dog>();
        doglist.add(new Dog("小黄","阿拉斯加"));
        doglist.add(new Dog("爱因斯坦","二哈"));
        doglist.add(new Dog("是","哈士奇"));
        doglist.add(new Dog("娟","中华田园犬"));
        //添加最后一条狗
        doglist.addLast(new Dog("傻瓜","博美"));
        //删除第一条狗
        doglist.removeFirst();
        //删除指定的狗
        for (int i = 0; i <doglist.size() ; i++) {
            if (doglist.get(i).getName().equals("是")) {
                System.out.println("删除指定的狗:" + doglist.get(i).getName() + "成功");
                doglist.remove(i);
            }
        }
    }
}
