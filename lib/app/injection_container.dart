import 'package:app_template/core/data_core/datasources/remote/app_api.dart';
import 'package:app_template/core/services/local_storage.dart';
import 'package:app_template/core/services/network/dio_factory.dart';
import 'package:app_template/features/Settings/data/datasources/local/settings_local_datasource.dart';
import 'package:app_template/features/Settings/data/repositories/language_repositories_imp.dart';
import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';
import 'package:app_template/features/Settings/domain/usecases/changeAppLanguage_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/getAllLanguage_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/getAppLanguage_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/get_theme_mode_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/set_theme_mode_usecase.dart';
import 'package:app_template/features/Settings/presentation/bloc/changeLanguages/language_bloc.dart';
import 'package:app_template/features/Settings/presentation/bloc/settings/settings_bloc.dart';
import 'package:app_template/core/network/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt di = GetIt.instance;

Future<void> initAppDICore() async {
  //shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  //AppLocal Storage instance
  di.registerLazySingleton<AppLocalStorage>(
    () => AppLocalStorageImpl(di<SharedPreferences>()),
  );

  //dio factory instance
  di.registerLazySingleton<DioFactory>(() => DioFactory(di<AppLocalStorage>()));

  //App Service Client instance
  await initApiDi();
}

Future<void> initApiDi()async {
  Dio dio = await di<DioFactory>().getDio();

  // App API Client
  di.registerLazySingleton<AppApiServiceClient>(() => AppApiServiceClient(dio));
}

Future<void> initLanguageDI() async {
  // Local Data Source
  di.registerLazySingleton<SettingsLocalDatasource>(
    () => SettingsLocalDatasourceImpl(di<AppLocalStorage>()),
  );
  // Language Repository
  di.registerLazySingleton<LanguageRepository>(
    () => LanguageRepositoryImp(di<SettingsLocalDatasource>()),
  );

  // UseCases
  di.registerLazySingleton<GetAppLanguageUseCase>(
    () => GetAppLanguageUseCase(di<LanguageRepository>()),
  );
  di.registerLazySingleton<ChangeAppLanguageUseCase>(
    () => ChangeAppLanguageUseCase(di<LanguageRepository>()),
  );
  di.registerLazySingleton<GetAllLanguageUseCase>(
    () => GetAllLanguageUseCase(di<LanguageRepository>()),
  );

  di.registerLazySingleton<ChangeLanguageBloc>(
    () => ChangeLanguageBloc(
      di<GetAllLanguageUseCase>(),
      di<ChangeAppLanguageUseCase>(),
      di<GetAppLanguageUseCase>(),
      di<AppLocalStorage>(),
    ),
  );
}

Future<void> initSettingsDI() async {
  di.registerLazySingleton<GetThemeModeUsecase>(
    () => GetThemeModeUsecase(di<LanguageRepository>()),
  );
  di.registerLazySingleton<SetThemeModeUsecase>(
    () => SetThemeModeUsecase(di<LanguageRepository>()),
  );
  di.registerLazySingleton<SettingsBloc>(
    () => SettingsBloc(di<GetThemeModeUsecase>(), di<SetThemeModeUsecase>()),
  );
}

Future<void> initAppDI() async {
  await initAppDICore();
  await initLanguageDI();
  await initSettingsDI();
}

