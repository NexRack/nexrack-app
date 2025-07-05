# nexrack_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Must-Have Flutter Packages for Clean Architecture

Your choice of Bloc for state management and Get_It for dependency injection is excellent for building a maintainable Flutter application. Here are some additional packages to consider:

### State Management
- ✅ **bloc/flutter_bloc** (already added): Good choice for complex applications with predictable state changes

### Routing
- **go_router** or **auto_route**: Type-safe routing with path parameters and deep linking support

### Network/API
- **dio**: Powerful HTTP client with interceptors, form data, request cancellation
- **retrofit**: Type-safe REST API client generator (works with dio)

### Local Storage
- **shared_preferences**: Simple key-value storage
- **hive**: Fast NoSQL database for more complex persistence
- **sqflite**: SQLite database for relational data

### Utilities
- **freezed**: Code generation for immutable classes, reduces boilerplate
- **json_serializable**: JSON serialization/deserialization
- **equatable**: Simplifies equality comparisons
- **logger**: Better debugging with pretty-printed logs

### Architecture
- **flutter_hooks**: Reusable stateful logic
- **dartz**: Functional programming helpers (Either type for error handling)

To implement these, update your pubspec.yaml with the packages you need and run `flutter pub get`. For a clean architecture approach, consider organizing your code into:

```
UI (Widget Tree)
   |
   ▼
Bloc/Cubit ← Event/Method
   |
   ▼
Business Logic (Repository / UseCase)
   |
   ▼
Data Source (e.g., API, Database)
```

```
lib/
├── main.dart
├── core/                <-- shared utils, error types, etc.
│   └── di/              <-- GetIt setup
├── data/                <-- implementation: APIs, models, repositories
│   ├── models/          <-- DTOs (Data Transfer Objects)
│   └── repositories/    <-- Implements domain repos
├── domain/              <-- pure logic, no Flutter here
│   ├── entities/        <-- Freezed models
│   ├── repositories/    <-- abstract repository interfaces
│   └── usecases/        <-- Login, FetchTodos, etc.
├── application/         <-- Blocs, Cubits, state + event
├── presentation/        <-- Screens, widgets, form validation
```

This structure with the right packages will help you maintain separation of concerns from the start.