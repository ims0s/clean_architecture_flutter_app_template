import 'package:app_template/core/services/local_storage.dart';
import 'package:app_template/core/utils/router_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:app_template/core/utils/constants.dart';

const String Accept = "application/json";
const String AUTHORIZATION = "Authorization";
const String DEFAULT_LANGUAGE = "Accept-Language";

class DioFactory {
  final AppLocalStorage _appLocalStorage;
  DioFactory(this._appLocalStorage);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration _timeOut = Duration(seconds: 60);
    Map<String, String> headers = {
      'Accept': Accept,
      'Content-Type': 'application/x-www-form-urlencoded',
      // 'Content-Type': 'application/json',
      'APP_API_TOKEN': Constants.APP_API_TOKEN,
      'grant_type': 'password',
      //DEFAULT_LANGUAGE: await _appLocalStorage.getAppLanguage()
    };
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      receiveTimeout: _timeOut,
      sendTimeout: _timeOut,
    );
    dio.interceptors.add(AppInterceptors(_appLocalStorage));

    if (kDebugMode) {
      // use in debug mode so print app logs
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,
          responseBody: false,
        ),
      );
    }

    return dio;
  }
}

class AppInterceptors extends InterceptorsWrapper {
  final AppLocalStorage _appLocalStorage;
  AppInterceptors(this._appLocalStorage);
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var accessToken = _appLocalStorage.getUserToken();
    if (accessToken.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $accessToken";
    }
    if(options.path.contains('auth/verify')){
      options.headers.remove(AUTHORIZATION);
    }
    var appLanguage = _appLocalStorage.getAppLanguage();
    options.headers[DEFAULT_LANGUAGE] = appLanguage;
    return super.onRequest(options, handler);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) async {
    // var url = err.request.uri;
    super.onError(err, handler);
    if (err.response != null && err.response?.statusCode == 401) {
      await _appLocalStorage.removeToken();
      SchedulerBinding.instance.addPostFrameCallback((_) {
          final BuildContext? context = RouterManager.navigatorKey.currentContext;
        try{
          GoRouter.of(context!).go('/login');
        } catch (e){
          Fluttertoast.showToast(msg: e.toString());
          GoRouter.of(context!).go("/");
        }
      });
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
    if (response.statusCode == 401) {
      await _appLocalStorage.removeToken();
      SchedulerBinding.instance.addPostFrameCallback((_) {
          final BuildContext? context = RouterManager.navigatorKey.currentContext;
        try{
          GoRouter.of(context!).go('/login');
        } catch (e){
          Fluttertoast.showToast(msg: e.toString());
          GoRouter.of(context!).go("/");
        }
      });
    }
  }
}
