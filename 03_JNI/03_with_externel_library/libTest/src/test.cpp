#include <stdio.h>
#include <android/log.h>

#include "test.h"

void testLog()
{
    __android_log_print(ANDROID_LOG_INFO, "APITest", "testLog1.....................................................................................................1");
}

int main()
{
    __android_log_print(ANDROID_LOG_INFO, "APITest", "libTest1.....................................................................................................1");

    return 0;
}
