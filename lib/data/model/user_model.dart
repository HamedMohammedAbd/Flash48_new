// ignore_for_file: unnecessary_getters_setters

class NormalUserModel {
  String? _userName;
  String? _userEmail;
  String? _userPassword;
  int? _userVerifycode;
  int? _userId;
  int? _userType;

  NormalUserModel(
      {String? userName,
      String? userEmail,
      String? userPassword,
      int? userVerifycode,
      int? userId,
      int? userType}) {
    if (userName != null) {
      _userName = userName;
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
    if (userId != null) {
      _userId = userId;
    }
    if (userType != null) {
      _userType = userType;
    }
  }

  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  String? get userEmail => _userEmail;
  set userEmail(String? userEmail) => _userEmail = userEmail;
  String? get userPassword => _userPassword;
  set userPassword(String? userPassword) => _userPassword = userPassword;
  int? get userVerifycode => _userVerifycode;
  set userVerifycode(int? userVerifycode) => _userVerifycode = userVerifycode;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get userType => _userType;
  set userType(int? userType) => _userType = userType;

  NormalUserModel.fromJson(Map<String, dynamic> json) {
    _userName = json['user_name'];
    _userEmail = json['user_email'];
    _userPassword = json['user_password'];
    _userVerifycode = json['user_verifycode'];
    _userId = json['user_id'];
    _userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_name'] = _userName;
    data['user_email'] = _userEmail;
    data['user_password'] = _userPassword;
    data['user_verifycode'] = _userVerifycode;
    data['user_id'] = _userId;
    data['user_type'] = _userType;
    return data;
  }
}
