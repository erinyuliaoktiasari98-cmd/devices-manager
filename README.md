# Devices Manager

Aplikasi Android untuk manajemen device dengan 2 modul utama: **Agent App** dan **Monitor App**.

## 🏗️ Arsitektur

- **Agent App**: Aplikasi yang berjalan di device sebagai agent/client
- **Monitor App**: Aplikasi monitoring untuk mengontrol dan memantau devices

## 📱 Requirements

- Android 7.0+ (API 24+)
- JDK 11
- Gradle 8.0+

## 🚀 Build & Run

### Build APK
```bash
./gradlew :agent-app:assembleRelease
./gradlew :monitor-app:assembleRelease
```

### Run Tests
```bash
./gradlew test
```

## 📦 CI/CD

Proyek ini menggunakan **GitHub Actions** untuk otomatis build APK setiap kali ada push ke `main` branch.

### Workflows:
- **build.yml**: Build dan upload APK
- **lint.yml**: Lint checking untuk kualitas kode

## 📄 Dokumentasi Lengkap

- [CONTRIBUTING.md](CONTRIBUTING.md) - Panduan kontribusi
- [ARCHITECTURE.md](ARCHITECTURE.md) - Detail arsitektur
- [CHANGELOG.md](CHANGELOG.md) - Catatan perubahan

## 📝 License

MIT License
