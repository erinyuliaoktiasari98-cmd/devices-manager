# ProGuard rules for Agent App
-keep class com.devices.agent.** { *; }
-keep class io.ktor.** { *; }
-keep class com.google.zxing.** { *; }

# Keep AndroidX classes
-keep class androidx.** { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Optimization
-optimizationpasses 5
-dontpreverify
-verbose

# Remove logging
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}
