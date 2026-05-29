// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BaseResponseModel<T>(
  status: json['success'] as bool,
  message: json['message'] as String?,
  result: json['result'] == null
      ? null
      : Result<T>.fromJson(
          json['result'] as Map<String, dynamic>,
          (value) => fromJsonT(value),
        ),
  extra: json['extra'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BaseResponseModelToJson<T>(
  BaseResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.status,
  'message': instance.message,
  'result': instance.result?.toJson((value) => toJsonT(value)),
  'extra': instance.extra,
};

BaseResponseSingleModel<T> _$BaseResponseSingleModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BaseResponseSingleModel<T>(
  status: json['success'] as bool,
  message: json['message'] as String?,
  result: _$nullableGenericFromJson(json['result'], fromJsonT),
  extra: json['extra'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BaseResponseSingleModelToJson<T>(
  BaseResponseSingleModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.status,
  'message': instance.message,
  'result': _$nullableGenericToJson(instance.result, toJsonT),
  'extra': instance.extra,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

Result<T> _$ResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => Result<T>(
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  links: json['links'] as Map<String, dynamic>?,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ResultToJson<T>(
  Result<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'links': instance.links,
  'meta': instance.meta,
};
