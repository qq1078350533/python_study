#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_snackdeng1_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}
extern "C"
JNIEXPORT jstring JNICALL
Java_com_m4399_framework_helpers_AppNativeHelper_desCbcEncrypt(JNIEnv *env, jclass clazz,
                                                               jstring str) {
    // TODO: implement desCbcEncrypt()
}