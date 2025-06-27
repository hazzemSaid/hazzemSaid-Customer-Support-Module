# Customer Support Module

https://github.com/user-attachments/assets/9cae3c3d-75ca-4b93-ba77-3ce64ffec176

A cross-platform Flutter module providing integrated customer support features for mobile and web applications. This module leverages Firebase for real-time chat, cloud data storage, and user support, and is built with scalable, modular architecture.

## Features

- **Customer Service Chat:** Real-time chat interface for connecting users with customer service agents.
- **Help & FAQs:** Dedicated screens for frequently asked questions and help topics.
- **Firebase Integration:** Uses Firebase Core, Firestore, and Realtime Database for robust backend support.
- **Theming:** Light and dark mode support through custom themes.
- **Multi-Platform:** Ready for Android, iOS, web, macOS, and Linux.
- **Navigation:** Powered by GetX for routing and dependency management.
- **Custom Fonts & Icons:** Includes DMSans and Rubik fonts, plus Cupertino and FontAwesome icons.

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/) SDK (3.8.1 or higher recommended)
- Firebase project (see below for setup)
- Dart 3.8.1 or higher

### Installation

1. **Clone this repository:**
   ```sh
   git clone https://github.com/hazzemSaid/hazzemSaid-Customer-Support-Module.git
   cd hazzemSaid-Customer-Support-Module
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **(Optional) Configure Firebase:**
   - The project already contains generated Firebase options for multiple platforms in `lib/firebase_options.dart`.
   - To use your own Firebase project, run the FlutterFire CLI and replace the generated file.

4. **Run the app:**
   ```sh
   flutter run
   ```

## Project Structure

```
lib/
├── core/           # App-wide constants, themes, and utilities
├── data/           # Data models and repository logic
├── modules/
│   ├── chatservices/      # Real-time chat features
│   ├── cutomerservice/    # Customer service main screen
│   └── HelpAndFAQsView/   # Help and FAQ screens
├── firebase_options.dart  # Firebase project configuration (auto-generated)
└── main.dart       # App entry point and routing
```

## Main Dependencies

- [`firebase_core`](https://pub.dev/packages/firebase_core)
- [`cloud_firestore`](https://pub.dev/packages/cloud_firestore)
- [`firebase_database`](https://pub.dev/packages/firebase_database)
- [`get`](https://pub.dev/packages/get)
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons)
- [`font_awesome_flutter`](https://pub.dev/packages/font_awesome_flutter)

See [`pubspec.yaml`](./pubspec.yaml) for the complete list.

## Usage

- **Home (Customer Service):** The main entry point for users seeking support.
- **Help and FAQs:** Accessible at `/helpAndFAQs`.
- **Chat Services:** Real-time chat available at `/chatServices`.

You can customize navigation, theming, and connect additional Firebase services as needed.

## Theming and Customization

- Light and dark themes are set up in `core/constanse/appthemes.dart`.
- Custom fonts (`DMSans`, `Rubik`) and additional assets can be configured in `pubspec.yaml`.

## Firebase

This module is pre-configured for Firebase. Update `lib/firebase_options.dart` using the [FlutterFire CLI](https://firebase.flutter.dev/docs/cli/) if you need to connect to your own Firebase project.

## Linting & Best Practices

- Uses `flutter_lints` for best coding standards.
- See `analysis_options.yaml` for customization.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements or bug fixes.

## License

Specify your license here. (e.g., MIT, Apache 2.0)

---

*For more details, refer to the Flutter [documentation](https://docs.flutter.dev/) and the official Firebase [documentation](https://firebase.google.com/docs).*
