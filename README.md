# 📱 Mahfil Demo

A Flutter application built with:

- **Flutter**: 3.32.5
- **Dart**: 3.8.1
- **FVM (Flutter Version Manager)**: ✅ Enabled
- **Java JDK**: 17

---

## 🚀 Getting Started

### ✅ Prerequisites

Make sure you have the following installed:

- [Flutter SDK 3.32.5](https://docs.flutter.dev/get-started/install)
- [FVM](https://fvm.app/docs/getting_started/installation)
- [Java JDK 17+](https://adoptium.net/temurin/releases/)
- Android Studio or VS Code (with Flutter & Dart plugins)

---

### 📦 Project Setup

Clone the project and install dependencies:

```bash
git clone https://github.com/sezanhaque/kahf_flutter.git
cd kahf_flutter
fvm install 3.32.5
fvm use 3.32.5
fvm flutter pub get
fvm flutter run
```

### 🏗 Code Generation Command
To generate code from annotations:

```bash
fvm flutter pub run build_runner build
```

### 📁 Project Structure (Clean Architecture):
Organized the project into the following layers:

```bash
lib/
└── src/
    ├── common/       # Common widgets
    ├── core/         # Core utilities like logger, DI, extensions, constants, exceptions, etc.
    ├── screens/      # Common screens like SplashScreen, OnboardingScreen, etc.
    ├── features/     # Feature-specific widgets, screens, providers, etc.
        └──{ feature_name }   # Feature-specific widgets, screens, providers, etc.
            ├── data/         # API services, DTOs, repositories
            ├── domain/       # Entities, use cases, repository contracts
            └── presentation/ # UI, features, view models
```

### 🖼️ Screenshots:
Splash Screen ![Splash Screen](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/1_Splash_Screen.PNG)

Home Screen Loading with Shimmer Effect ![Home Screen Loading with Shimmer Effect](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/2_Home_Screen_Loading_with_shimmer_effect.PNG)

Home Screen ![Home Screen](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/3_Home_Screen.PNG)

Video Player Screen ![Video Player Screen](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/4_Video_Player_Screen.PNG)

Video Player Full Screen ![Video Player Full Screen](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/5_Video_Player_Full_Screen.PNG)

Video Player More Option ![Video Player More Option](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/6_Video_Player_More_Option.PNG)

Home Screen Video PiP Mode![Home Screen Video PiP Mode](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/7_Home_Screen_Video_PiP_Mode.PNG)
---

### Video
![Mahfil Demo App Video](https://drive.google.com/file/d/1UCZbmAe5FpUKjIZJbTMJKgnACo5vFrDE/view?usp=sharing)