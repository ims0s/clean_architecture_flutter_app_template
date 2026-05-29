Write-Host "Starting Flutter build_runner watch..." -ForegroundColor Green
try {
    flutter pub run build_runner watch --delete-conflicting-outputs
} catch {
    Write-Host "Error running build_runner: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit"
}