import 'package:app_template/app/app.dart';
import 'package:app_template/app/injection_container.dart';
import 'package:app_template/bloc_observer.dart';
import 'package:app_template/core/utils/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initAppDI();
  Bloc.observer= MyBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [ENGLISH_LOCAL, ARABIC_LOCAL],
      path: ASSET_PATH_LOCALIZATION,
      child: MyApp(),
    ),
  );}

