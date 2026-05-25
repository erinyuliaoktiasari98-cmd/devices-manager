# Architecture Overview - Devices Manager

## 🏗️ Project Structure

```
devices-manager/
├── agent-app/                    # Device yang akan dimonitor
│   ├── src/main/java/
│   │   └── com/devices/agent/
│   │       ├── MainActivity.kt
│   │       ├── presentation/     # UI Layer (Compose)
│   │       ├── domain/           # Business Logic
│   │       ├── data/             # Data Layer
│   │       └── utils/            # Utilities
│   ├── build.gradle.kts
│   └── proguard-rules.pro
│
├── monitor-app/                  # Device yang melakukan monitoring
│   ├── src/main/java/
│   │   └── com/devices/monitor/
│   │       ├── MainActivity.kt
│   │       ├── presentation/     # UI Layer (Compose)
│   │       ├── domain/           # Business Logic
│   │       ├── data/             # Data Layer
│   │       └── utils/            # Utilities
│   ├── build.gradle.kts
│   └── proguard-rules.pro
│
├── .github/
│   └── workflows/
│       ├── build.yml             # Auto-build APK
│       └── lint.yml              # Code quality check
│
└── build.gradle.kts              # Root build config
```

## 🎯 Architecture Pattern: MVVM + Clean Architecture

### Layer Structure

```
┌─────────────────────────────┐
│   Presentation Layer        │  (UI - Jetpack Compose)
│   - MainActivity            │
│   - ViewModels              │
│   - UI States               │
└──────────────┬──────────────┘
               │
┌──────────────▼──────────────┐
│   Domain Layer              │  (Business Logic)
│   - Use Cases               │
│   - Repositories (Interface)│
│   - Entities                │
└──────────────┬──────────────┘
               │
┌──────────────▼──────────────┐
│   Data Layer                │  (Data Sources)
│   - Repositories (Impl)     │
│   - Remote (WebSocket)      │
│   - Local Cache             │
└─────────────────────────────┘
```

## 🔌 Communication: WebSocket

### Agent App (Server)
```kotlin
// Mengirimkan data monitoring
- Camera Stream
- Screen Share
- GPS Location
- QR Code untuk pairing
```

### Monitor App (Client)
```kotlin
// Menerima data dan melakukan monitoring
- Connect via QR Code
- Receive Camera Stream
- Receive Screen Share
- Receive GPS Location
```

## 📦 Dependencies

### Core
- `androidx.core:core-ktx` - Android Core Library
- `androidx.appcompat:appcompat` - AppCompat Support

### UI
- `androidx.compose.ui:ui` - Jetpack Compose
- `androidx.compose.material:material` - Material Design 3

### Networking
- `io.ktor:ktor-client-websockets` - WebSocket Client
- `io.ktor:ktor-server-websockets` - WebSocket Server

### Camera & Media
- `androidx.camera:camera-core` - CameraX (future)
- `androidx.camera:camera-camera2` - Camera2 Backend (future)

### Location
- `com.google.android.gms:play-services-location` - Google Play Services (future)

### QR Code
- `com.google.zxing:core` - ZXing QR Code (Monitor App)
- `com.google.zxing:android-core` - ZXing Android (Agent App)

## 🔄 Data Flow

### QR Code Pairing Flow
```
1. Agent App generate QR Code (device info)
2. Monitor App scan QR Code
3. Extract connection info dari QR Code
4. Monitor App connect via WebSocket
5. Handshake & authenticate
6. Start monitoring
```

### Real-time Monitoring Flow
```
Agent App                          Monitor App
   │                                 │
   ├─ Capture Camera ─────────────→ │ Display Camera
   │                                 │
   ├─ Capture Screen ─────────────→ │ Display Screen
   │                                 │
   ├─ Get GPS Location ────────────→ │ Display Location
   │                                 │
   └─ Handle Commands ←───────────── │ Send Commands
```

## 🔐 Security Considerations

- [ ] Use TLS/SSL untuk WebSocket
- [ ] Implement authentication/authorization
- [ ] Encrypt sensitive data in transit
- [ ] Validate all inputs
- [ ] Use ProGuard untuk code obfuscation
- [ ] Request appropriate permissions

## 🚀 Build & Release

### Automatic CI/CD
- GitHub Actions melakukan build otomatis setiap push ke `main`
- Generate APK untuk kedua app
- Upload ke Artifacts
- Create Release dengan APK files

### Manual Build
```bash
# Build Agent App
./gradlew :agent-app:assembleRelease

# Build Monitor App
./gradlew :monitor-app:assembleRelease
```

## 📝 Future Improvements

- [ ] Add database layer (Room)
- [ ] Implement local data persistence
- [ ] Add video codec optimization
- [ ] Implement connection reconnection logic
- [ ] Add user authentication system
- [ ] Add device history/logs
- [ ] Implement battery optimization
- [ ] Add unit & integration tests

---

**Last Updated:** 2026-05-25
