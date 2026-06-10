# Surface - Netflix & Disney+ Unified Streaming Platform

Surface is a Flutter mobile application that combines Netflix and Disney+ streaming services into a single, unified platform with integrated Bank of Khartoum payment processing.

## Features

### Core Features
- 🎬 Access Netflix and Disney+ through a single app
- 💳 Integrated Bank of Khartoum payment processing
- 👤 User account dashboard with subscription management
- 📱 Multi-language support (Arabic & English)
- 🔔 Push notifications for payments and renewals
- 💬 Live chat customer support
- 📊 Transaction history and payment receipts

### Additional Features
- ✅ Secure authentication with encrypted storage
- ✅ Subscription renewal reminders
- ✅ Service status monitoring
- ✅ Referral program
- ✅ User ratings and feedback system
- ✅ Subscription package comparison
- ✅ Automatic status tracking for requests
- ✅ Two-factor authentication
- ✅ Offline mode support

## Project Structure

```
lib/
├── config/           # Configuration files
│   ├── theme/       # App theming
│   ├── localization/ # Multi-language support
│   ├── routes/      # Navigation routes
│   └── constants/   # App constants
├── data/            # Data layer
│   ├── models/      # Data models
│   ├── datasources/ # Local & remote data sources
│   ├── repositories/ # Repository implementations
│   └── services/    # External services (API, payments)
├── domain/          # Domain layer
│   ├── entities/    # Business entities
│   └── usecases/    # Business logic
├── presentation/    # Presentation layer
│   ├── providers/   # State management
│   ├── screens/     # App screens
│   ├── widgets/     # Reusable widgets
│   └── dialogs/     # Dialog widgets
├── utils/           # Utility functions
└── main.dart        # App entry point
```

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart (>=3.0.0)
- Android Studio or Xcode
- Firebase account (for notifications)

### Installation

1. Clone the repository
```bash
git clone https://github.com/damham700/surface.git
cd surface
```

2. Install dependencies
```bash
flutter pub get
```

3. Set up Firebase
   - Download `google-services.json` for Android
   - Download `GoogleService-Info.plist` for iOS
   - Place them in the respective folders

4. Run the app
```bash
flutter run
```

## Architecture

Surface follows **Clean Architecture** with clear separation of concerns:

- **Presentation Layer**: UI and user interaction
- **Domain Layer**: Business logic and rules
- **Data Layer**: Data sources and repositories

This architecture ensures:
- High testability
- Easy maintenance
- Clear code organization
- Scalability

## Technologies Used

- **State Management**: Provider, Riverpod
- **Navigation**: GoRouter
- **API**: Dio
- **Local Storage**: Hive, SharedPreferences
- **Authentication**: Flutter Secure Storage
- **Notifications**: Firebase Cloud Messaging
- **Payments**: Bank of Khartoum WebView Integration
- **Localization**: Intl
- **UI**: Flutter ScreenUtil, Shimmer, Lottie

## Development

### Building APK
```bash
flutter build apk --release
```

### Building iOS
```bash
flutter build ios --release
```

### Running Tests
```bash
flutter test
```

## API Integration

All API endpoints are defined in `lib/config/constants/api_constants.dart`. The app communicates with a backend API for:

- User authentication
- Subscription management
- Payment processing
- Transaction history
- Support tickets

## Security Features

- Encrypted local storage for sensitive data
- Secure API communication with SSL pinning
- Token-based authentication
- Two-factor authentication support
- Audit logging for all transactions
- Fraud detection mechanisms

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, email support@surface.app or use the in-app support chat.

## Roadmap

- [ ] Phase 1: Core functionality (Q2 2024)
- [ ] Phase 2: Payment integration (Q3 2024)
- [ ] Phase 3: AI recommendations (Q4 2024)
- [ ] Phase 4: Premium features (Q1 2025)

## Authors

- **Damham700** - Initial work

## Acknowledgments

- Netflix for API access
- Disney+ for API access
- Bank of Khartoum for payment integration support
- Flutter community for excellent documentation
