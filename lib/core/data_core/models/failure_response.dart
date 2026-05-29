class Failure<T> {
  int code;
  String message;
  String? status;
  T? data;
  dynamic offlineData;

  Failure({
    this.code = 400,
    required this.message,
    this.status = "",
    this.data,
    this.offlineData,
  });
}
