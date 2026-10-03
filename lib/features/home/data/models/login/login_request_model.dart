class LoginRequestModel {
  int? mobile;
  int? otp;

  LoginRequestModel({this.mobile, this.otp});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['otp'] = this.otp;
    return data;
  }
}
