# Clean Architecture Flutter App Template

A Flutter project template following **Clean Architecture** principles with a feature-first folder structure. Designed as a starting point for production apps.

## Architecture Overview

```
main.dart
  → EasyLocalization | DI setup (GetIt) | BlocObserver | MyApp
      → MultiBlocProvider (ChangeLanguageBloc + SettingsBloc)
          → MaterialApp.router (GoRouter)
              → SplashScreen
              → StatefulShellRoute (bottom nav)
                  → Home tab → EventsScreen
                  → Menu tab → SettingsScreen → ChangeLanguagesScreen
```

### Layer Structure (per feature)

```
features/<feature_name>/
├── data/                  # Data layer
│   ├── datasources/       #   remote/ (API), local/ (DB/SharedPrefs)
│   ├── models/            #   DTOs with json_serializable
│   ├── mappers/           #   to convert DTOs to entities and vice versa
│   └── repositories/      #   Repository implementations
├── domain/                # Domain layer (no external dependencies)
│   ├── entities/          #   Business objects
│   ├── repositories/      #   Abstract repository contracts
│   └── usecases/          #   Single-responsibility business logic
└── presentation/          # Presentation layer
    ├── bloc/              #   State management (flutter_bloc + freezed)
    ├── screens/           #   UI pages
    └── widgets/           #   Reusable UI components
```

**Dependency rule:** `presentation → domain ← data` — domain never depends on data or presentation layers.

## Tech Stack

| Purpose | Package |
|---------|---------|
| State management | `flutter_bloc` + `freezed` |
| Routing | `go_router` (declarative, nested) |
| DI | `get_it` (service locator) |
| Networking | `dio` + `retrofit` |
| Local storage | `shared_preferences` |
| i18n | `easy_localization` |
| Code generation | `build_runner`, `json_serializable`, `freezed`, `retrofit_generator` |

## Key Files

### Entry & Config

| File | Purpose |
|------|---------|
| `lib/main.dart` | App entry — wraps with `EasyLocalization`, initializes DI, sets `MyBlocObserver` |
| `lib/app/app.dart` | `MyApp` singleton — `MultiBlocProvider` wrapping `MaterialApp.router` |
| `lib/app/injection_container.dart` | All `GetIt` registrations (core, language, settings) |
| `lib/app/extensions.dart` | Extension methods for null safety, validation, date formatting |
| `lib/bloc_observer.dart` | Logs bloc lifecycle via `dart:developer` |

### Core Infrastructure

| File | Purpose |
|------|---------|
| `lib/core/services/network/dio_factory.dart` | `Dio` factory with auth interceptor, language header, 401 redirect |
| `lib/core/services/local_storage.dart` | `SharedPreferences` abstraction — token, theme, language, user data |
| `lib/core/network/network_info.dart` | Connectivity check via `InternetConnectionChecker` |
| `lib/core/data_core/datasources/remote/app_api.dart` | Retrofit API client scaffold (add endpoints here) |
| `lib/core/data_core/models/base_response_model.dart` | Generic `BaseResponseModel<T>`, `Result<T>`, `Failure<T>` |
| `lib/core/utils/router_manager.dart` | GoRouter config with `StatefulShellRoute.indexedStack` |
| `lib/core/utils/routes_manager.dart` | Route name string constants |
| `lib/core/utils/constants.dart` | API base URL, tokens, keys |
| `lib/core/utils/language_manager.dart` | Locale constants (`ar`, `en`) |
| `lib/core/resources/theme_manager.dart` | `ThemeData` (light/dark) + `AppColorsExtension` (21 custom colors) |

### Shared UI Widgets

| File | Purpose |
|------|---------|
| `lib/core/presentation/widgets/primary_button.dart` | Full-width button with loading state |
| `lib/core/presentation/widgets/custom_text_field.dart` | Themed text field with validation |
| `lib/core/presentation/widgets/custom_dropdown.dart` | Generic typed dropdown |
| `lib/core/presentation/widgets/custom_dialog.dart` | Reusable dialog with icon, message, actions |
| `lib/core/presentation/widgets/pagination_widget.dart` | Infinite scroll pagination |
| `lib/core/presentation/widgets/reverse_pagination_widget.dart` | Reverse-order pagination (chat) |

## Data Flow

```
UI (Screen)
  → Bloc (state/event)
    → UseCase (single business operation)
      → Repository (abstract contract)
        → RepositoryImpl
          → DataSource (remote API / local storage)
```

Example: User toggles dark mode → `SettingsBloc` → `SetThemeModeUsecase` → `LanguageRepository` → `SettingsLocalDatasource` → `SharedPreferences`

## Routing

Uses `go_router` with `StatefulShellRoute.indexedStack` to preserve tab state:

| Route | Screen | Bottom Nav |
|-------|--------|------------|
| `/` | SplashScreen | — |
| `/home` | EventsScreen | Tab 0 |
| `/menu` | SettingsScreen | Tab 1 |
| `/menu/change_lang` | ChangeLanguagesScreen | (pushed) |

## Theming

`AppColorsExtension` extends `ThemeExtension` with 21 custom colors. Access via `context.customColors.<name>`. Light and dark `ThemeData` are defined in `theme_manager.dart` and switched via `SettingsBloc`.

## Localization

Translation JSON files in `assets/translations/` (`en.json`, `ar.json`).  
Generated key constants in `lib/translations/locale_keys.g.dart`.  
Usage: `LocaleKeys.home.tr()`.  
Regenerate after adding keys:

```sh
flutter pub run easy_localization:generate
```
Helper scripts: `translation_builder.bat` / `.ps1` / `.sh`

## Code Generation

```sh
# Watch for changes and regenerate all .g.dart / .freezed.dart files
flutter pub run build_runner watch --delete-conflicting-outputs
```

Helper scripts: `freezer_builder.bat` / `.ps1` / `.sh`

## Getting Started

1. Run `flutter pub get`
2. Update `lib/core/utils/constants.dart` with your API base URL and tokens
3. Define API endpoints in `lib/core/data_core/datasources/remote/app_api.dart`
4. Add features following the existing `Settings` feature pattern
5. Add translation keys to `assets/translations/*.json` and regenerate
6. Run for your target platform

## Notes

- The `Settings` feature under `lib/features/Settings/` is the reference implementation showing the full clean architecture stack.
