import 'package:alumni/core/constant/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _storage;

  static Future<void> init()async{
     final storage = await SharedPreferences.getInstance();
     _storage = storage;
  }

  Future<void> storeJwt(String jwt)async{
    await _storage.setString(AppConstant.JWT, jwt);
  }

  Future<dynamic> getJwt()async{
    dynamic jwt = await _storage.get(AppConstant.JWT);
    return jwt;
  }

  Future<void> deleteToken()async{
    await _storage.remove(AppConstant.OTP);
  }

  Future<void> storeOTP(String otp)async{
    await _storage.setString(AppConstant.OTP, otp);
  }

  Future<dynamic> getOTP()async{
    dynamic jwt = await _storage.get(AppConstant.OTP);
    return jwt;
  }

  Future<void> deleteOTP()async{
    await _storage.remove(AppConstant.OTP);
  }

}