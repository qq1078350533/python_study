#include<jnipro.h>
JNIEXPORT jstring JNICALL Java_com_example_snackdeng_MainActivity__1getString
  (JNIEnv * env, jobject obj) {
        jstring str = (env*) -> NewStringUTF(JNIEnv*, "hello word");
        return str;
  }