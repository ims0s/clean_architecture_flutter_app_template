import 'package:app_template/core/utils/routes_manager.dart';
import 'package:app_template/features/Settings/presentation/bloc/settings/settings_bloc.dart';
import 'package:app_template/features/Settings/presentation/widgets/settings_menu_item_widget.dart';
import 'package:app_template/features/Settings/presentation/widgets/toggle_switch_widget.dart';
import 'package:app_template/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool hasNotifications = true;

  @override
  void initState() {
    super.initState();
  }

  void updateDarkMode(bool value) {
    BlocProvider.of<SettingsBloc>(
      context,
    ).add(SettingsEvent.toggleDarkModeEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, SettingsState state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Settings Menu
                Expanded(
                  child: Column(
                    children: [
                      // Dark Mode Button
                      SettingsMenuItemWidget(
                        icon: state.isDarkMode
                            ? Icons.dark_mode
                            : Icons.light_mode,
                        label: state.isDarkMode
                            ? LocaleKeys.dark_mode.tr()
                            : LocaleKeys.light_mode.tr(),
                        onTap: () {
                          updateDarkMode(!state.isDarkMode);
                        },
                        trailing: ToggleSwitchWidget(
                          isActive: state.isDarkMode,
                          onChanged: (value) {
                            updateDarkMode(value);
                          },
                        ),
                      ),
                      // Language Button
                      SettingsMenuItemWidget(
                        icon: Icons.language,
                        label: LocaleKeys.language.tr(),
                        onTap: () {
                          context.go(Routes.CHANGE_LANG_ROUT);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
