import 'package:alumni/core/network/api_response.dart';
import 'package:alumni/core/storage/local_storage.dart';
import 'package:alumni/features/home/data/datasources/auth_remote_datasource.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_response_model.dart';
import 'package:flutter/cupertino.dart';

class SignInViewModel extends ChangeNotifier{

  final AuthRemoteDatasource _authRemoteDatasource = AuthRemoteDatasource();
  final LocalStorage _localStorage = LocalStorage();

  ApiResponse<SendOtpResponseModel> sendOTPApiResponse = ApiResponse.initial();

  Future<void> onTapSendOtp(SendOtpRequestModel sendOtpRequestModel)async{
    sendOTPApiResponse = ApiResponse.loading();
    notifyListeners();
    try{
      // debugPrint("request Send Otp: ${sendOtpRequestModel.toJson()}");
      final data  = await _authRemoteDatasource.sendOTP(sendOtpRequestModel);
      // debugPrint("data Send Otp: ${data.otp} ${data.message} ${data.status} ");
      _localStorage.storeOTP(data.otp.toString());
      sendOTPApiResponse = ApiResponse.complete(data);
      notifyListeners();
    }catch(e){
      sendOTPApiResponse = ApiResponse.error(e.toString());
      // debugPrint("error Send Otp: ${e.toString()}");
      notifyListeners();
    }
  }

}