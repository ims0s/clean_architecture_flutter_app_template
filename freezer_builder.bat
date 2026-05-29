@echo off
echo Starting Flutter build_runner watch...
call flutter pub run build_runner watch --delete-conflicting-outputs
if %ERRORLEVEL% neq 0 (
    echo Error running build_runner.
    pause
)
