import 'package:alumni/core/network/status.dart';

class ApiResponse<T> {

  Status? status;
  String? message;
  T? data;

  ApiResponse(this.status, this.message, this.data);

  ApiResponse.loading():status = Status.LOADING;
  ApiResponse.complete(this.data) :status = Status.COMPLETE;
  ApiResponse.error(this.message):status = Status.ERROR;

}