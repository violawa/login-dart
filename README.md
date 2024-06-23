# Login Widget in Flutter

This project is a simple login screen implemented using Flutter. It demonstrates the basic usage of various Flutter widgets, form handling, and simple validation with a toast notification.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [License](#license)


### Prerequisites

- Flutter SDK
- Android Studio or VS Code with Flutter and Dart plugins
- Android/iOS Emulator or a physical device

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/violawa/login-dart
   ```
2. **Navigate to the project directory:**
   ```bash
   cd login_widget_flutter
   ```
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

### Usage

1. **Run the application:**
   ```bash
   flutter run
   ```

### Imports

```dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
```

### Key Components

- **TextEditingController:** Controllers to handle input for email and password.
- **MaterialApp:** The root widget of the application.
- **Scaffold:** Provides a structure for the app including an app bar and a body.
- **TextFormField:** Input fields for email and password with validation and decoration.
- **Checkbox:** A simple checkbox widget for "Remember Me".
- **ElevatedButton:** A button to submit the form which performs basic validation and shows a toast notification.

## Dependencies

- `fluttertoast`: To display toast messages.

Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  fluttertoast: ^8.0.9
```

## License

This project is licensed under the MIT License

---
