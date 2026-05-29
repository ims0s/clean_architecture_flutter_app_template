# clean_architecture_app_template — agent guide

Flutter marketplace app (AC classifieds). Version 2.2.0+7, SDK ^3.8.1.

## Architecture

- **Clean Architecture** per feature: `data/` → `domain/` → `presentation/`
- **State:** flutter_bloc v9, DI via GetIt (manual in `lib/app/injection_container.dart`)
- **Routing:** go_router v17 with `StatefulShellRoute.indexedStack` for bottom nav
- **API:** retrofit v4.9.0 + Dio; base `https://coldstations.com/api`; content-type `application/x-www-form-urlencoded`
- **Auth:** Sanctum bearer tokens; network check pings `https://coldstations.com`
- **Real-time:** Pusher/Reverb WebSocket via `pusher_reverb_flutter`
- **Theme:** Custom `AppColorsExtension` on `ThemeData`; access via `context.customColors`

## Key commands

| Command | Purpose |
|---|---|
| `flutter pub get` | Install deps |
| `flutter run` | Run app |
| `flutter analyze` | Lint + static analysis |
| `flutter test` | Run tests |
| `flutter pub run build_runner build --delete-conflicting-outputs` | Generate code (retrofit, json_serializable) |
| `flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/translations -o locale_keys.g.dart` | Regenerate translation keys |

Build scripts also in root: `freezer_builder.ps1` (build_runner watch), `translation_builder.ps1` (locale key gen).

## Code generation

- `*.g.dart` files are generated — edit the `.dart` source, then run `build_runner`
- `app_api.dart` → `app_api.g.dart` (retrofit)
- `locale_keys.g.dart` is generated from `assets/translations/{en,ar}.json`

## Code conventions

- `use_super_parameters: ignore` in `analysis_options.yaml` — do not add `super` params
- Response envelope: `BaseResponseModel<T>` / `BaseResponseSingleModel<T>` with generic `fromJson`
- Route path constants in `lib/core/utils/routes_manager.dart`, router config in `router_manager.dart`
- Translations use `easy_localization`; keys in `LocaleKeys.*` from `locale_keys.g.dart`
- Font: Poppins (Regular 400, Medium 500, SemiBold 600, Bold 700)

## Important files

| File | Role |
|---|---|
| `lib/main.dart` | Entrypoint — init DI, easy_localization, Bloc.observer |
| `lib/app/injection_container.dart` | All DI wiring |
| `lib/app/app.dart` | Root widget, MultiBlocProvider, MaterialApp.router |
| `lib/core/data_core/datasources/remote/app_api.dart` | Retrofit API interface |
| `lib/core/utils/constants.dart` | Base URL, API token, Reverb key |
| `lib/core/resources/theme_manager.dart` | Light/dark themes + AppColorsExtension |
| `lib/core/utils/router_manager.dart` | GoRouter with all routes |

## Gotchas

- `InternetConnectionChecker` is wired to `coldstations.com` specifically
- `APP_API_TOKEN` is hardcoded in `Constants` — do not commit changes to it
- Keystore file (`cold_staion_keystore.jks`) is gitignored
- The `publish/` directory is gitignored
- No CI workflows in `.github/`
- Test coverage is minimal (one smoke test)
