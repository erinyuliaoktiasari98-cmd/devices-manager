# ProGuard Rules for Monitor App

# Keep all classes in com.devices.monitor package
-keep class com.devices.monitor.** { *; }

# Keep Android framework classes
-keep class android.** { *; }
-keep class androidx.** { *; }

# Keep Kotlin metadata
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable

# Keep Ktor client
-keep class io.ktor.client.** { *; }
-keep class io.ktor.util.** { *; }

# Keep ZXing
-keep class com.google.zxing.** { *; }

# Optimization settings
-optimizationpasses 5
-dontobfuscate
