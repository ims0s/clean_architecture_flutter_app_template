class BaseResponseEntity {
  final String message;
  final int statusCode;

  BaseResponseEntity({
    required this.message,
    required this.statusCode,
  });
}