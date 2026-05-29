@echo off
echo Starting Flutter translation generation...
call flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/translations -o locale_keys.g.dart
if %ERRORLEVEL% neq 0 (
    echo Error running translation generation.
    pause
)
