import 'package:flutter/material.dart';
import 'package:inquize/size_config.dart';


class AppUrl {
  static const String liveBaseURL = "https://inquize.com/stage/public/api";


  static const String baseURL = liveBaseURL;
  static const String login = "https://inquize.com/stage/public/loginjson";
  static const String register = baseURL + "/account/register";
  static const String loginMedia = baseURL + "/account/loginWithSocialMedia";
  static const String getUser = baseURL + "/user";
  static const String updateUser = baseURL + "/user";
  static const String forgotPassword = baseURL + "/account/passwordRecovery";
  static const String loginforgotPassword = baseURL + "/account/verifyPasswordRecover";
  static const String newPassword = baseURL + "/account/newPassword";
}

const kPrimaryColor = Color(0xFF7D4F97);
const kPrimaryLightColor = Color(0xFFE41A79);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFE41A79), Color(0xFF665b9f)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
const padding=EdgeInsets.symmetric(horizontal: 18);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp usernameValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kUserNameNullError = "Please Enter your UserName";
const String kInvalidUserNameError = "Please Enter Valid UserName";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kPhoneNumberMoreError = "Phone number should be 8 character";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
