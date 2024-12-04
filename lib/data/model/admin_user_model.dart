// ignore_for_file: unnecessary_getters_setters

class AdminUserModel {
  int? _userId;
  String? _userName;
  int? _userType;
  String? _userEmail;
  String? _userPassword;
  int? _userVerifycode;
  String? _userPhone;
  String? _userActive;

  AdminUserModel(
      {int? userId,
      String? userName,
      int? userType,
      String? userEmail,
      String? userPassword,
      int? userVerifycode,
      String? userPhone,
      String? userActive}) {
    if (userId != null) {
      _userId = userId;
    }
    if (userName != null) {
      _userName = userName;
    }
    if (userType != null) {
      _userType = userType;
    }
    if (userEmail != null) {
      _userEmail = userEmail;
    }
    if (userPassword != null) {
      _userPassword = userPassword;
    }
    if (userVerifycode != null) {
      _userVerifycode = userVerifycode;
    }
    if (userPhone != null) {
      _userPhone = userPhone;
    }
    if (userActive != null) {
      _userActive = userActive;
    }
  }

  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  int? get userType => _userType;
  set userType(int? userType) => _userType = userType;
  String? get userEmail => _userEmail;
  set userEmail(String? userEmail) => _userEmail = userEmail;
  String? get userPassword => _userPassword;
  set userPassword(String? userPassword) => _userPassword = userPassword;
  int? get userVerifycode => _userVerifycode;
  set userVerifycode(int? userVerifycode) => _userVerifycode = userVerifycode;
  String? get userPhone => _userPhone;
  set userPhone(String? userPhone) => _userPhone = userPhone;
  String? get userActive => _userActive;
  set userActive(String? userActive) => _userActive = userActive;

  AdminUserModel.fromJson(Map<String, dynamic> json) {
    _userId = json['user_id'];
    _userName = json['user_name'];
    _userType = json['user_type'];
    _userEmail = json['user_email'];
    _userPassword = json['user_password'];
    _userVerifycode = json['user_verifycode'];
    _userPhone = json['user_phone'];
    _userActive = json['user_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = _userId;
    data['user_name'] = _userName;
    data['user_type'] = _userType;
    data['user_email'] = _userEmail;
    data['user_password'] = _userPassword;
    data['user_verifycode'] = _userVerifycode;
    data['user_phone'] = _userPhone;
    data['user_active'] = _userActive;
    return data;
  }
}
