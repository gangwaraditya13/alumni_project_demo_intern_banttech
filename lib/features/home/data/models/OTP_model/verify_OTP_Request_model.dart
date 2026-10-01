class VerifyOtpRequestModel {
  int? mobile;
  int? otp;

  VerifyOtpRequestModel({this.mobile, this.otp});

  VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) {
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
