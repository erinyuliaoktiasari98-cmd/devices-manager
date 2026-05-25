# ProGuard Rules for Agent App

# Keep all classes in com.devices.agent package
-keep class com.devices.agent.** { *; }

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
