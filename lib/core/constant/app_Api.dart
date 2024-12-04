class AppApi {
  static const String route = "http://172.23.240.1/flash48";
  static const authRoute = "$route/auth";
  static const String normalUserSIgnUp = "$authRoute/normal_user_sign_up.php";
  static const String adminSignup = "$authRoute/admin_user_sign_up.php";
  static const String loginUser = "$authRoute/login_user.php";
  static const String updateVerifyCode = "$authRoute/update_verify_code.php";
}