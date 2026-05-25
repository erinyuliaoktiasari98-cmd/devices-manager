-keep class com.devices.monitor.** { *; }
-keepclassmembers class * {
    *** on*(...);
}
-dontwarn com.google.zxing.**
-keep class com.google.zxing.** { *; }
