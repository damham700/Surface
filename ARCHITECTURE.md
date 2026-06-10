# Surface App - Architecture Documentation

## Overview

Surface follows **Clean Architecture** principles combined with **MVVM (Model-View-ViewModel)** pattern using Provider for state management.

## Architecture Layers

### 1. Presentation Layer

**Location**: `lib/presentation/`

Responsible for:
- UI components (screens, widgets, dialogs)
- User interactions
- State management with Providers
- Navigation

**Structure**:
```
presentation/
├── providers/         # State management
├── screens/          # Full-screen pages
├── widgets/          # Reusable UI components
└── dialogs/          # Dialog widgets
```

### 2. Domain Layer

**Location**: `lib/domain/`

Responsible for:
- Business logic
- Use cases
- Business entities
- Abstract repository interfaces

**Structure**:
```
domain/
├── entities/         # Business objects
└── usecases/         # Business logic operations
```

### 3. Data Layer

**Location**: `lib/data/`

Responsible for:
- Data access
- API communication
- Local database
- Repository implementations

**Structure**:
```
data/
├── models/           # Data transfer objects (DTOs)
├── datasources/
│   ├── local/       # Local database access
│   └── remote/      # API access
├── repositories/     # Repository implementations
└── services/         # External services
```

### 4. Utilities Layer

**Location**: `lib/utils/`

**Contains**:
- Helper functions
- Custom exceptions
- Extensions
- Constants

## Data Flow

```
UI (Screens) → Providers (State) → Repositories → Datasources → External Services
    ↑                                                                    ↓
    └────────────────────── Response (Model) ──────────────────────────┘
```

## State Management

### Provider Pattern

```dart
// Define Provider
final authProvider = ChangeNotifierProvider((ref) => AuthProvider());

// Use in UI
Consumer(
  builder: (context, ref, child) {
    final auth = ref.watch(authProvider);
    return Text(auth.isLoggedIn ? 'Logged In' : 'Logged Out');
  },
)
```

## Dependency Injection

Providers serve as the dependency injection container:

```dart
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
    ChangeNotifierProvider(create: (_) => SubscriptionProvider()),
  ],
  child: MyApp(),
)
```

## Error Handling

Custom exception hierarchy:

```dart
// Base exception
abstract class AppException implements Exception {}

// Specific exceptions
class NetworkException extends AppException {}
class PaymentException extends AppException {}
class AuthException extends AppException {}
```

## Security Practices

1. **API Security**:
   - Use HTTPS only
   - Implement SSL pinning
   - Validate certificates

2. **Data Storage**:
   - Encrypt sensitive data
   - Use secure storage for tokens
   - Clear sensitive data on logout

3. **Authentication**:
   - Use JWT tokens
   - Implement token refresh
   - Secure password handling
