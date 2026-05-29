#!/bin/bash

echo -e "\033[32mStarting Flutter build_runner watch...\033[0m"

if ! flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/translations -o locale_keys.g.dart; then
    echo -e "\033[31mError running build_runner\033[0m"
    exit 1
fi

echo -e "\033[32mTranslation build completed successfully!\033[0m"
