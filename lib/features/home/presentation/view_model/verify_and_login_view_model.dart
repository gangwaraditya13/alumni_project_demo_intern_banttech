import 'package:alumni/core/network/api_response.dart';
import 'package:alumni/core/storage/local_storage.dart';
import 'package:alumni/features/home/data/datasources/auth_remote_datasource.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_Request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_response_model.dart';
import 'package:alumni/features/home/data/models/login/login_request_model.dart';
import 'package:alumni/features/home/data/models/login/login_response_model.dart';
import 'package:flutter/cupertino.dart';

class VerifyAndLoginViewModel extends ChangeNotifier {
  final AuthRemoteDatasource _authRemoteDatasource = AuthRemoteDatasource();
  final LocalStorage _localStorage = LocalStorage();

  ApiResponse<VerifyOtpResponseModel> verifyOtpApiResponse =
  ApiResponse.initial();
  ApiResponse<LoginResponseModel> loginApiResponse = ApiResponse.initial();

  /// Call whenever a fresh OTP screen opens (or OTP is resent) so old
  /// verify/login results don't leak into the new attempt.
  /// Use notify: false when calling from initState.
  void resetState({bool notify = true}) {
    verifyOtpApiResponse = ApiResponse.initial();
    loginApiResponse = ApiResponse.initial();
    if (notify) notifyListeners();
  }

  Future<String> getOtp() async {
    try {
      return await _localStorage.getOTP();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<String> getJwt() async {
    try {
      return await _localStorage.getJwt();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> verifyOTP(VerifyOtpRequestModel verifyOtpRequestModel) async {
    verifyOtpApiResponse = ApiResponse.loading();
    notifyListeners();
    try {
      final data = await _authRemoteDatasource.verifyOTP(verifyOtpRequestModel);
      verifyOtpApiResponse = ApiResponse.complete(data);
      notifyListeners();
    } catch (e) {
      verifyOtpApiResponse = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> login(LoginRequestModel loginRequestModel) async {
    loginApiResponse = ApiResponse.loading();
    notifyListeners();
    try {
      final data = await _authRemoteDatasource.login(loginRequestModel);
      loginApiResponse = ApiResponse.complete(data);
      notifyListeners();
    } catch (e) {
      loginApiResponse = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}