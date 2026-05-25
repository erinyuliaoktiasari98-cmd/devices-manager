-keep class com.devices.agent.** { *; }
-keepclassmembers class * {
    *** on*(...);
}
-dontwarn com.google.zxing.**
-keep class com.google.zxing.** { *; }
