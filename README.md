# Devices Manager

Aplikasi monitoring real-time antar perangkat Android dengan fitur:
- 📷 Monitoring Kamera Real-time
- 📡 Screen Sharing
- 🗺️ GPS Location Tracking
- 🔗 QR Code Connection Setup

## 📱 Dua Aplikasi dalam Satu Repository

### 1. **Monitor App** (`monitor-app/`)
Aplikasi untuk monitoring perangkat lain
- View kamera real-time dari target device
- View layar real-time
- Tracking GPS location
- Connect ke device lain via QR code

### 2. **Agent App** (`agent-app/`)
Aplikasi yang dipasang di perangkat yang akan dimonitor
- Share kamera real-time
- Share layar real-time
- Share lokasi GPS
- QR code untuk setup koneksi

## 🛠️ Tech Stack
- **Language:** Kotlin
- **Architecture:** MVVM + Clean Architecture
- **Real-time Communication:** WebSocket
- **Camera:** CameraX
- **Location:** Google Play Services
- **QR Code:** ZXing Library

## 📦 Build & Release

### Automatic Build
Setiap push ke branch `main`, GitHub Actions akan otomatis build APK dan tersedia di Releases.

### Manual Build
```bash
# Monitor App
./gradlew :monitor-app:assembleRelease

# Agent App
./gradlew :agent-app:assembleRelease
```

APK akan tersedia di:
- `monitor-app/build/outputs/apk/release/`
- `agent-app/build/outputs/apk/release/`

## 🚀 Cara Menggunakan

### Setup Awal
1. Install kedua APK di dua perangkat berbeda
2. Buka Agent App di perangkat yang ingin dimonitor
3. Buka Monitor App di perangkat yang ingin monitoring
4. Scan QR code dari Agent App menggunakan Monitor App untuk connect

### Fitur
- **Camera:** View real-time kamera dari perangkat target
- **Screen:** Lihat layar perangkat target secara real-time
- **GPS:** Track lokasi geografis perangkat target
- **History:** Simpan riwayat monitoring

## ⚠️ Catatan Penting
- Aplikasi ini memerlukan persetujuan pengguna yang jelas
- Pastikan mematuhi regulasi privasi dan keamanan data setempat
- Gunakan hanya untuk keperluan yang sah dan dengan persetujuan

## 📄 License
MIT License

---

**Developed with ❤️ for Device Monitoring**
