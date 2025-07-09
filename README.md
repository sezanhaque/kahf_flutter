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
- Make sure NDK 27 is installed: (for some plugin dependencies)
   - Open Android Studio > SDK Manager > SDK Tools
   - Enable NDK (Side by side) → Check if version 27.0 is installed.
   - If not, install it from there.

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
Splash Screen 

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/1_Splash_Screen.PNG" width="200" height="400"/>

Home Screen Loading with Shimmer Effect 

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/2_Home_Screen_Loading_with_shimmer_effect.PNG" width="200" height="400"/>

Home Screen

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/3_Home_Screen.PNG" width="200" height="400"/>

Video Player Screen

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/4_Video_Player_Screen.PNG" width="200" height="400"/>

Video Player Full Screen

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/5_Video_Player_Full_Screen.PNG" width="200" height="400"/>

Video Player More Option

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/6_Video_Player_More_Option.PNG" width="200" height="400"/>

Home Screen Video PiP Mode 

<img src="https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/7_Home_Screen_Video_PiP_Mode.PNG" width="200" height="400"/>

---

### Video


<a href="https://drive.google.com/file/d/1UCZbmAe5FpUKjIZJbTMJKgnACo5vFrDE/view?usp=sharing" target="_blank">
Mahfil Demo App Video Google Drive
</a>

App GIF
![](https://raw.github.com/sezanhaque/kahf_flutter/master/screenshots/Mahfil_Demo_App.gif)