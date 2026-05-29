import 'package:app_template/core/resources/theme_manager.dart';
import 'package:app_template/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MainScreen({required this.navigationShell, super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _onItemTapped(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation:
          index == widget.navigationShell.currentIndex
    );
  }

  NavigationBarThemeData getNavigationTheme() {
    return NavigationBarThemeData(
      backgroundColor: context.customColors.background,
      height: 76,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((state) {
        IconThemeData iconTheme = IconThemeData(size: 24);
        if (state.contains(WidgetState.selected)) {
          // return IconThemeData(color: context.customColors.iconsActive);
          return iconTheme.copyWith(color: context.customColors.iconsActive);
        }
        return iconTheme.merge(
          IconThemeData(color: context.customColors.iconsInactive),
        );
      }),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((state) {
        if (state.contains(WidgetState.selected)) {
          return TextStyle(color: context.customColors.iconsActive);
        }
        return TextStyle(color: context.customColors.iconsInactive);
      }),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: getNavigationTheme(),
        child: NavigationBar(
          backgroundColor: context.customColors.background,
          onDestinationSelected: _onItemTapped,
          selectedIndex: widget.navigationShell.currentIndex,
          indicatorColor: Colors.transparent,
          indicatorShape: CircleBorder(),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: LocaleKeys.home.tr(),
            ),
            NavigationDestination(
              icon: Icon(Icons.menu),
              label: LocaleKeys.menu.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
