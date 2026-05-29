Write-Host "Starting Flutter build_runner watch..." -ForegroundColor Green
try {
    flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/translations -o locale_keys.g.dart
} catch {
    Write-Host "Error running build_runner: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit"
}