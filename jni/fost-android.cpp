/*
    Copyright 2014 Felspar Co Ltd. http://support.felspar.com/
    Distributed under the Boost Software License, Version 1.0.
    See accompanying file LICENSE_1_0.txt or copy at
        http://www.boost.org/LICENSE_1_0.txt
*/


#include "fost-android.hpp"


JavaVM *fostlib::g_JavaVM = nullptr;



JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
    fostlib::g_JavaVM = vm;
    return JNI_VERSION_1_6;
}