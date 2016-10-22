#include <jni.h>

JNIEXPORT jstring JNICALL
Java_io_github_hujiawei_flac_MainActivity_stringFromJNI(JNIEnv *env, jobject instance) {
    return (*env)->NewStringUTF(env, "hello flac");
}