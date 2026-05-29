import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T> {
  @JsonKey(name: 'success')
  final bool status;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final Result<T>? result;
  @JsonKey(name: 'extra')
  final Map<String, dynamic>? extra;

  BaseResponseModel({
    required this.status,
    this.message,
    this.result,
    this.extra,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseModelToJson(this, toJsonT);
}
@JsonSerializable(genericArgumentFactories: true)
class BaseResponseSingleModel<T> {
  @JsonKey(name: 'success')
  final bool status;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'result')
  final T? result;
  @JsonKey(name: 'extra')
  final Map<String, dynamic>? extra;

  BaseResponseSingleModel({
    required this.status,
    this.message,
    this.result,
    this.extra,
  });

  factory BaseResponseSingleModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseSingleModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseSingleModelToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class Result<T> {
  @JsonKey(name: 'data')
  final T? data;
  @JsonKey(name: 'links')
  final Map<String, dynamic>? links;
  @JsonKey(name: 'meta')
  final Map<String, dynamic>? meta;
  Result({required this.data, this.links, this.meta});
  factory Result.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ResultFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ResultToJson(this, toJsonT);
}
