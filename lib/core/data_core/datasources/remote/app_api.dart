import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:app_template/core/utils/constants.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppApiServiceClient {
  factory AppApiServiceClient(Dio dio, {String baseUrl}) = _AppApiServiceClient;
 
}
