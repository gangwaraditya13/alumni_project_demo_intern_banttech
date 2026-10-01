import 'package:alumni/core/constant/api_constant.dart';
import 'package:alumni/core/network/api_client.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_response_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_Request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_response_model.dart';
import 'package:alumni/features/home/data/models/login/login_request_model.dart';
import 'package:alumni/features/home/data/models/login/login_response_model.dart';

class AuthRemoteDatasource {

  final ApiClient _apiClient = ApiClient();

  //send OTP
  Future<SendOtpResponseModel> sendOTP(SendOtpRequestModel  sendOtpRequestModel)async{

    final response  = await _apiClient.post(ApiConstant.sendOTPUrl, sendOtpRequestModel.toJson());

    return SendOtpResponseModel.fromJson(response);
  }

  //verify OTP
  Future<VerifyOtpResponseModel> verifyOTP(VerifyOtpRequestModel verifyOtpRequestModel)async{

    final response  = await _apiClient.post(ApiConstant.verifyOTPUrl, verifyOtpRequestModel.toJson());

    return VerifyOtpResponseModel.fromJson(response);
  }

  //login
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel)async{

    final response  = await _apiClient.post(ApiConstant.verifyOTPUrl, loginRequestModel.toJson());

    return LoginResponseModel.fromJson(response);
  }

}