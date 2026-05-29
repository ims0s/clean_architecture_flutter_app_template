import 'package:app_template/app/injection_container.dart';
import 'package:app_template/core/services/local_storage.dart';
import 'package:app_template/core/resources/theme_manager.dart';
import 'package:app_template/core/utils/router_manager.dart';
import 'package:app_template/features/Settings/presentation/bloc/changeLanguages/language_bloc.dart';
import 'package:app_template/features/Settings/presentation/bloc/settings/settings_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppLocalStorage _appLocalStorage = di<AppLocalStorage>();
  @override
  void initState() {
    super.initState();
  }

  void updateAppLang(String langCode, BuildContext context) async {
    _appLocalStorage
        .changeAppLanguage(langCode)
        .then((value) => context.setLocale(Locale(langCode)))
        .then(
          (value) => BlocProvider.of<ChangeLanguageBloc>(
            context,
          ).add(ChangeLanguageEvent.AppLanguageChangedEvent(langCode)),
        );
    // context.setLocale(Locale(langCode)).then((value) =>
    //     BlocProvider.of<ChangeLanguageBloc>(context)
    //         .add(ChangeLanguageEvent.AppLanguageChangedEvent(langCode)));
  }

  @override
  void didChangeDependencies() {
    /// if language was not depnding on API value -> the line below would be enough to
    /// update it when "context.setLocale(Locale(langCode))" is called from the change language widget
    // _appLocalStorage.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ChangeLanguageBloc(di(), di(), di(), di())
                ..add(ChangeLanguageEvent.GetUserLanguageEvent()),
        ),
        BlocProvider(
          create: (context) =>
              di<SettingsBloc>()..add(SettingsEvent.getStoredThemeEvent()),
        ),
      ],
      child: BlocBuilder<ChangeLanguageBloc, LanguageChangedState>(
        buildWhen: (previous, current) =>
            previous.selected_language != current.selected_language,
        builder: (languageContext, state) {
          updateAppLang(state.selected_language, languageContext);
          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (settingsContext, settingsState) {
              final themeMode = settingsState.isDarkMode ? darkMode : lightMode;
              return MaterialApp.router(
                routerConfig: RouterManager.router,
                localizationsDelegates: languageContext.localizationDelegates,
                supportedLocales: languageContext.supportedLocales,
                locale: languageContext.locale,
                title: "Cold Station",
                theme: themeMode,
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
