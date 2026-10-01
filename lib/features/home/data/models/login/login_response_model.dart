class LoginResponseModel {
  bool? status;
  String? message;
  String? token;
  User? user;

  LoginResponseModel({this.status, this.message, this.token, this.user});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  int? roleId;
  String? name;
  String? email;
  String? image;
  int? accountStatus;
  String? createdAt;
  String? updatedAt;
  String? phoneNumber;

  User(
      {this.id,
        this.roleId,
        this.name,
        this.email,
        this.image,
        this.accountStatus,
        this.createdAt,
        this.updatedAt,
        this.phoneNumber});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    accountStatus = json['account_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['account_status'] = this.accountStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
