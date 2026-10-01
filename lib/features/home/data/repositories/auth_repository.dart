import 'package:alumni/features/home/data/datasources/auth_remote_datasource.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/send_OTP_response_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_Request_model.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_response_model.dart';
import 'package:alumni/features/home/data/models/login/login_request_model.dart';
import 'package:alumni/features/home/data/models/login/login_response_model.dart';

class AuthRepository {

  final AuthRemoteDatasource _authRemoteDatasource = AuthRemoteDatasource();

  Future<SendOtpResponseModel> onTapSendOTP(SendOtpRequestModel sendOtpRequestModel)async{
    SendOtpResponseModel sendOTP = await _authRemoteDatasource.sendOTP(sendOtpRequestModel);
    return sendOTP;
  }

  Future<VerifyOtpResponseModel> onVerifyOTP(VerifyOtpRequestModel verifyOtpRequestModel)async{
    VerifyOtpResponseModel verifyOTP = await _authRemoteDatasource.verifyOTP(verifyOtpRequestModel);
    return verifyOTP;
  }

  Future<LoginResponseModel> onTapLogin(LoginRequestModel loginRequestModel)async{
    LoginResponseModel login = await _authRemoteDatasource.login(loginRequestModel);
    return login;
  }

}